.class public Lcom/android/common/io/MoreCloseables;
.super Ljava/lang/Object;
.source "MoreCloseables.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Landroid/content/res/AssetFileDescriptor;)V
    .locals 1
    .parameter "assetFileDescriptor"

    .prologue
    .line 38
    if-eqz p0, :cond_0

    .line 40
    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 29
    if-eqz p0, :cond_0

    .line 30
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 32
    :cond_0
    return-void
.end method
