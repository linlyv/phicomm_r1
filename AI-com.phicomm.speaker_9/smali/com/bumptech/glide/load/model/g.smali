.class public Lcom/bumptech/glide/load/model/g;
.super Ljava/lang/Object;
.source "ImageVideoWrapperEncoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/a<",
        "Lcom/bumptech/glide/load/model/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/a<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/load/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/a<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/a<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/load/a<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/bumptech/glide/load/model/g;->a:Lcom/bumptech/glide/load/a;

    .line 23
    iput-object p2, p0, Lcom/bumptech/glide/load/model/g;->b:Lcom/bumptech/glide/load/a;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/bumptech/glide/load/model/g;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bumptech/glide/load/model/g;->a:Lcom/bumptech/glide/load/a;

    invoke-interface {v1}, Lcom/bumptech/glide/load/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/model/g;->b:Lcom/bumptech/glide/load/a;

    invoke-interface {v1}, Lcom/bumptech/glide/load/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/model/g;->c:Ljava/lang/String;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/model/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/load/model/f;Ljava/io/OutputStream;)Z
    .locals 1

    .line 28
    invoke-virtual {p1}, Lcom/bumptech/glide/load/model/f;->a()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/bumptech/glide/load/model/g;->a:Lcom/bumptech/glide/load/a;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/model/f;->a()Ljava/io/InputStream;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/load/a;->a(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result p1

    return p1

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/model/g;->b:Lcom/bumptech/glide/load/a;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/model/f;->b()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/load/a;->a(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 0

    .line 15
    check-cast p1, Lcom/bumptech/glide/load/model/f;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/model/g;->a(Lcom/bumptech/glide/load/model/f;Ljava/io/OutputStream;)Z

    move-result p1

    return p1
.end method