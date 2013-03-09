.class public final Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyItemInfo;
.super Ljava/lang/Object;
.source "MediaAutoUploadSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "PrivacyItemInfo"
.end annotation


# instance fields
.field public mEnabled:Z

.field public mTitle:Ljava/lang/String;

.field public mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "title"
    .parameter "value"
    .parameter "isEnabled"

    .prologue
    .line 868
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 869
    iput-object p1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyItemInfo;->mTitle:Ljava/lang/String;

    .line 870
    iput-object p2, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyItemInfo;->mValue:Ljava/lang/String;

    .line 871
    iput-boolean p3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$PrivacyItemInfo;->mEnabled:Z

    .line 872
    return-void
.end method
