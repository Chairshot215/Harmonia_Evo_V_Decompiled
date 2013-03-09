.class public Lcom/google/android/gm/SenderInfoLoader$ContactInfo;
.super Ljava/lang/Object;
.source "SenderInfoLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/SenderInfoLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactInfo"
.end annotation


# instance fields
.field public final contactUri:Landroid/net/Uri;

.field public final photo:Landroid/graphics/Bitmap;

.field public final status:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/Integer;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "contactUri"
    .parameter "status"
    .parameter "photo"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/gm/SenderInfoLoader$ContactInfo;->contactUri:Landroid/net/Uri;

    .line 40
    iput-object p2, p0, Lcom/google/android/gm/SenderInfoLoader$ContactInfo;->status:Ljava/lang/Integer;

    .line 41
    iput-object p3, p0, Lcom/google/android/gm/SenderInfoLoader$ContactInfo;->photo:Landroid/graphics/Bitmap;

    .line 42
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/SenderInfoLoader$ContactInfo;->status:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " photo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/SenderInfoLoader$ContactInfo;->photo:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
