.class public Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;
.super Ljava/lang/Object;
.source "MediaAutoUploadSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MsgParameter"
.end annotation


# instance fields
.field public accountType:Ljava/lang/String;

.field public albumList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/social/data/Album;",
            ">;"
        }
    .end annotation
.end field

.field public defaultAlbum:Lcom/htc/opensense/social/data/Album;

.field public readablePrivacyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/social/data/Privacy;",
            ">;"
        }
    .end annotation
.end field

.field public serviceName:Ljava/lang/String;

.field public serviceTitle:Ljava/lang/String;

.field public sso:Z

.field public ssoAction:Ljava/lang/String;

.field public ssoLogin:Z

.field public uploadServiceComponent:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
