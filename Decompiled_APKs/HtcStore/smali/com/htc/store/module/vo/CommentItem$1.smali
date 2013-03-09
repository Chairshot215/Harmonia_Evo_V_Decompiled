.class final Lcom/htc/store/module/vo/CommentItem$1;
.super Ljava/lang/Object;
.source "CommentItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/module/vo/CommentItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/htc/store/module/vo/CommentItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/store/module/vo/CommentItem;
    .locals 2
    .parameter "in"

    .prologue
    .line 100
    new-instance v0, Lcom/htc/store/module/vo/CommentItem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/htc/store/module/vo/CommentItem;-><init>(Landroid/os/Parcel;Lcom/htc/store/module/vo/CommentItem$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/htc/store/module/vo/CommentItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/store/module/vo/CommentItem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/store/module/vo/CommentItem;
    .locals 1
    .parameter "size"

    .prologue
    .line 104
    new-array v0, p1, [Lcom/htc/store/module/vo/CommentItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/htc/store/module/vo/CommentItem$1;->newArray(I)[Lcom/htc/store/module/vo/CommentItem;

    move-result-object v0

    return-object v0
.end method
