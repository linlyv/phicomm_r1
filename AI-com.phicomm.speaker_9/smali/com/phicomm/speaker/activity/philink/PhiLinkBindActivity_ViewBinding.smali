.class public Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity_ViewBinding;
.super Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;
.source "PhiLinkBindActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;",
        ">",
        "Lcom/phicomm/speaker/base/BaseActivity_ViewBinding<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/base/BaseActivity;Landroid/view/View;)V

    const-string v0, "field \'mIvScan\'"

    .line 18
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090142

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->mIvScan:Landroid/widget/ImageView;

    const-string v0, "field \'mTvDownTime\'"

    .line 19
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09030a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->mTvDownTime:Landroid/widget/TextView;

    const-string v0, "field \'mTvTitle\'"

    .line 20
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09030b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->mTvTitle:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    check-cast v0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;

    .line 26
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->unbind()V

    const/4 v1, 0x0

    .line 28
    iput-object v1, v0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->mIvScan:Landroid/widget/ImageView;

    .line 29
    iput-object v1, v0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->mTvDownTime:Landroid/widget/TextView;

    .line 30
    iput-object v1, v0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->mTvTitle:Landroid/widget/TextView;

    return-void
.end method
