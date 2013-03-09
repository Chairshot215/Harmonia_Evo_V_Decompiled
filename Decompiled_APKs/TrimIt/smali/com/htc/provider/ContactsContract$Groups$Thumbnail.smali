.class public Lcom/htc/provider/ContactsContract$Groups$Thumbnail;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/ContactsContract$Groups;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Thumbnail"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static EMPTY:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static EXTENSTION:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static PREFIX_ABSOLUTE_FILE_PATH:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 606
    const-string v0, ""

    sput-object v0, Lcom/htc/provider/ContactsContract$Groups$Thumbnail;->EMPTY:Ljava/lang/String;

    .line 608
    const-string v0, ""

    sput-object v0, Lcom/htc/provider/ContactsContract$Groups$Thumbnail;->PREFIX_ABSOLUTE_FILE_PATH:Ljava/lang/String;

    .line 612
    const-string v0, ""

    sput-object v0, Lcom/htc/provider/ContactsContract$Groups$Thumbnail;->EXTENSTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGroupThumbnailPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "title"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 627
    invoke-static {p0}, Lcom/htc/provider/HtcContactsContract$Groups$Thumbnail;->getGroupThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static loadGroupPhotoThumbnail(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "context"
    .parameter "title"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 617
    invoke-static {p0, p1}, Lcom/htc/provider/HtcContactsContract$Groups$Thumbnail;->loadGroupPhotoThumbnail(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static loadGroupPhotoThumbnail(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "context"
    .parameter "title"
    .parameter "opts"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 622
    invoke-static {p0, p1, p2}, Lcom/htc/provider/HtcContactsContract$Groups$Thumbnail;->loadGroupPhotoThumbnail(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
