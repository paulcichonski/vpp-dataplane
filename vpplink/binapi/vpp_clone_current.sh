#!/bin/bash
VPP_COMMIT=5f4f2081c

if [ ! -d $1/.git ]; then
	rm -rf $1
	git clone "https://gerrit.fd.io/r/vpp" $1
	cd $1
	git reset --hard ${VPP_COMMIT}
else
	cd $1
	git fetch "https://gerrit.fd.io/r/vpp" && git reset --hard ${VPP_COMMIT}
fi

# This should be first to avoid hiding failures in the patches
echo "diff --git a/src/vlib/unix/input.c b/src/vlib/unix/input.c
index 7531dd197..94a2bfb12 100644
--- a/src/vlib/unix/input.c
+++ b/src/vlib/unix/input.c
@@ -245,7 +245,7 @@ linux_epoll_input_inline (vlib_main_t * vm, vlib_node_runtime_t * node,
 	      {
 		/* Sleep for 100us at a time */
 		ts.tv_sec = 0;
-		ts.tv_nsec = 1000 * 100;
+		ts.tv_nsec = 1000 * 10;
 
 		while (nanosleep (&ts, &tsrem) < 0)
 		  ts = tsrem;
" | git apply -- && git add -A &&  git commit --author "Calico-vpp builder <>" -m "Use 10us interrupt sleep"


git fetch "https://gerrit.fd.io/r/vpp" refs/changes/11/28711/4 && git cherry-pick FETCH_HEAD # 28711: vlib: force input node interrupts to be unique | https://gerrit.fd.io/r/c/vpp/+/28711
git fetch "https://gerrit.fd.io/r/vpp" refs/changes/35/29735/2 && git cherry-pick FETCH_HEAD # 29735: cnat: Fix invalid adj_index | https://gerrit.fd.io/r/c/vpp/+/29735
git fetch "https://gerrit.fd.io/r/vpp" refs/changes/24/29724/3 && git cherry-pick FETCH_HEAD # 29724: cnat: reduce compile time | https://gerrit.fd.io/r/c/vpp/+/29724
git fetch "https://gerrit.fd.io/r/vpp" refs/changes/55/29955/1 && git cherry-pick FETCH_HEAD # 29955: cnat: Fix throttle hash & cleanup | https://gerrit.fd.io/r/c/vpp/+/29955
git fetch "https://gerrit.fd.io/r/vpp" refs/changes/49/29649/3 && git cherry-pick FETCH_HEAD # 29649: tap: fix the segv | https://gerrit.fd.io/r/c/vpp/+/29649
git fetch "https://gerrit.fd.io/r/vpp" refs/changes/86/29386/7 && git cherry-pick FETCH_HEAD # 29386: virtio: DRAFT: multi tx support | https://gerrit.fd.io/r/c/vpp/+/29386
git fetch "https://gerrit.fd.io/r/vpp" refs/changes/46/30146/1 && git cherry-pick FETCH_HEAD # 30146: wireguard: return public key in api | https://gerrit.fd.io/r/c/vpp/+/30146
git fetch "https://gerrit.fd.io/r/vpp" refs/changes/54/30154/1 && git cherry-pick FETCH_HEAD # 30154: wireguard: run feature after gso | https://gerrit.fd.io/r/c/vpp/+/30154
git fetch "https://gerrit.fd.io/r/vpp" refs/changes/73/30273/1 && git cherry-pick FETCH_HEAD # 30273: cnat: Fix session with deleted tr | https://gerrit.fd.io/r/c/vpp/+/30273
git fetch "https://gerrit.fd.io/r/vpp" refs/changes/97/30097/3 && git cherry-pick FETCH_HEAD # 30097: vlib: Fix sh int addr | https://gerrit.fd.io/r/c/vpp/+/30097
git fetch "https://gerrit.fd.io/r/vpp" refs/changes/75/30275/7 && git cherry-pick FETCH_HEAD # 30275: cnat: add input feature node | https://gerrit.fd.io/r/c/vpp/+/30275
git fetch "https://gerrit.fd.io/r/vpp" refs/changes/87/28587/27 && git cherry-pick FETCH_HEAD # 28587: cnat: k8s extensions

# Policies
git fetch "https://gerrit.fd.io/r/vpp" refs/changes/83/28083/13 && git cherry-pick FETCH_HEAD # 28083: acl: acl-plugin custom policies |  https://gerrit.fd.io/r/c/vpp/+/28083
git fetch "https://gerrit.fd.io/r/vpp" refs/changes/13/28513/14 && git cherry-pick FETCH_HEAD # 25813: capo: Calico Policies plugin | https://gerrit.fd.io/r/c/vpp/+/28513
