.class public Lcom/jph/takephoto/app/TakePhotoFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "TakePhotoFragmentActivity.java"

# interfaces
.implements Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;
.implements Lcom/jph/takephoto/permission/InvokeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jph.takephoto.app.TakePhotoFragmentActivity"


# instance fields
.field private invokeParam:Lcom/jph/takephoto/model/InvokeParam;

.field private takePhoto:Lcom/jph/takephoto/app/TakePhoto;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getTakePhoto()Lcom/jph/takephoto/app/TakePhoto;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/jph/takephoto/app/TakePhotoFragmentActivity;->takePhoto:Lcom/jph/takephoto/app/TakePhoto;

    if-nez v0, :cond_0

    .line 56
    invoke-static {p0}, Lcom/jph/takephoto/permission/TakePhotoInvocationHandler;->of(Lcom/jph/takephoto/permission/InvokeListener;)Lcom/jph/takephoto/permission/TakePhotoInvocationHandler;

    move-result-object v0

    new-instance v1, Lcom/jph/takephoto/app/TakePhotoImpl;

    invoke-direct {v1, p0, p0}, Lcom/jph/takephoto/app/TakePhotoImpl;-><init>(Landroid/app/Activity;Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;)V

    invoke-virtual {v0, v1}, Lcom/jph/takephoto/permission/TakePhotoInvocationHandler;->bind(Lcom/jph/takephoto/app/TakePhoto;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jph/takephoto/app/TakePhoto;

    iput-object v0, p0, Lcom/jph/takephoto/app/TakePhotoFragmentActivity;->takePhoto:Lcom/jph/takephoto/app/TakePhoto;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/jph/takephoto/app/TakePhotoFragmentActivity;->takePhoto:Lcom/jph/takephoto/app/TakePhoto;

    return-object v0
.end method

.method public invoke(Lcom/jph/takephoto/model/InvokeParam;)Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;
    .locals 2

    .line 74
    invoke-static {p0}, Lcom/jph/takephoto/model/TContextWrap;->of(Landroid/app/Activity;)Lcom/jph/takephoto/model/TContextWrap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jph/takephoto/model/InvokeParam;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jph/takephoto/permission/PermissionManager;->checkPermission(Lcom/jph/takephoto/model/TContextWrap;Ljava/lang/reflect/Method;)Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    move-result-object v0

    .line 75
    sget-object v1, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->WAIT:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    invoke-virtual {v1, v0}, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    iput-object p1, p0, Lcom/jph/takephoto/app/TakePhotoFragmentActivity;->invokeParam:Lcom/jph/takephoto/model/InvokeParam;

    :cond_0
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/jph/takephoto/app/TakePhotoFragmentActivity;->getTakePhoto()Lcom/jph/takephoto/app/TakePhoto;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/jph/takephoto/app/TakePhoto;->onActivityResult(IILandroid/content/Intent;)V

    .line 42
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/jph/takephoto/app/TakePhotoFragmentActivity;->getTakePhoto()Lcom/jph/takephoto/app/TakePhoto;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/jph/takephoto/app/TakePhoto;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 46
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 47
    invoke-static {p1, p2, p3}, Lcom/jph/takephoto/permission/PermissionManager;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    move-result-object p1

    .line 48
    iget-object p2, p0, Lcom/jph/takephoto/app/TakePhotoFragmentActivity;->invokeParam:Lcom/jph/takephoto/model/InvokeParam;

    invoke-static {p0, p1, p2, p0}, Lcom/jph/takephoto/permission/PermissionManager;->handlePermissionsResult(Landroid/app/Activity;Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;Lcom/jph/takephoto/model/InvokeParam;Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/jph/takephoto/app/TakePhotoFragmentActivity;->getTakePhoto()Lcom/jph/takephoto/app/TakePhoto;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/jph/takephoto/app/TakePhoto;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 37
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public takeCancel()V
    .locals 3

    .line 70
    sget-object v0, Lcom/jph/takephoto/app/TakePhotoFragmentActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jph/takephoto/app/TakePhotoFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/jph/takephoto/R$string;->msg_operation_canceled:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public takeFail(Lcom/jph/takephoto/model/TResult;Ljava/lang/String;)V
    .locals 2

    .line 66
    sget-object p1, Lcom/jph/takephoto/app/TakePhotoFragmentActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "takeFail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public takeSuccess(Lcom/jph/takephoto/model/TResult;)V
    .locals 3

    .line 62
    sget-object v0, Lcom/jph/takephoto/app/TakePhotoFragmentActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takeSuccess\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jph/takephoto/model/TResult;->getImage()Lcom/jph/takephoto/model/TImage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jph/takephoto/model/TImage;->getCompressPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
