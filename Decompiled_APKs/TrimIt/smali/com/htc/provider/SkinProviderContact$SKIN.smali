.class public final Lcom/htc/provider/SkinProviderContact$SKIN;
.super Ljava/lang/Object;
.source "SkinProviderContact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/SkinProviderContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SKIN"
.end annotation


# static fields
.field public static final ADD_TIME:Ljava/lang/String; = "dateadded"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final FILE_NAME:Ljava/lang/String; = "filename"

.field public static final FILE_SIZE:Ljava/lang/String; = "filesize"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final INSTALLED_SD_SKIN_PACKAGE:I = 0x2

.field public static final INVALIDATE:I = -0x1

.field public static final MODIFY_TIME:Ljava/lang/String; = "datemodified"

.field public static final NOT_SKIN:I = 0x0

.field public static final PACKAGE_NAME:Ljava/lang/String; = "packagename"

.field public static final PACKAGE_TYPE:Ljava/lang/String; = "packagetype"

.field public static final PREVIEW:Ljava/lang/String; = "preview"

.field public static final PREVIEW_LAND:Ljava/lang/String; = "previewland"

.field public static final SD_SKIN_PACKAGE:I = 0x1

.field public static final SKIN_ICON:Ljava/lang/String; = "skinicon"

.field public static final SKIN_NAME:Ljava/lang/String; = "skinname"

.field public static final SKIN_VERSION:Ljava/lang/String; = "skinversion"

.field public static final SYSTEM_FILE_SIZE:I = 0x0

.field public static final SYSTEM_SKIN_PACKAGE:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "content://com.htc.skinscanner.SkinProvider/skin"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
