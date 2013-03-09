.class public Lcom/htc/fusion/htcbookmarkwidget/util/AppUnbundleUtil;
.super Ljava/lang/Object;
.source "AppUnbundleUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppUnbundleUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPhoneStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneStorageState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setRoundedCornerEnabled(Landroid/view/View;ZZ)V
    .locals 0
    .parameter "view"
    .parameter "topRoundCorners"
    .parameter "bottomRoundCorners"

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setRoundedCornerEnabled(ZZ)V

    .line 31
    return-void
.end method
