.class public Lcom/htc/wrap/android/provider/HtcWrapMediaStore$Images$HtcInk;
.super Ljava/lang/Object;
.source "HtcWrapMediaStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapMediaStore$Images;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HtcInk"
.end annotation


# static fields
.field public static final HtcInkSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Landroid/provider/MediaStore$Images$HtcInk;->HtcInkSupported:Z

    sput-boolean v0, Lcom/htc/wrap/android/provider/HtcWrapMediaStore$Images$HtcInk;->HtcInkSupported:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "volumeName"

    .prologue
    .line 46
    invoke-static {p0}, Landroid/provider/MediaStore$Images$HtcInk;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
