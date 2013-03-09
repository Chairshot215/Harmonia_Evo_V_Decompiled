.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WSoundComposite"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;
    }
.end annotation


# instance fields
.field public ExternalId:Ljava/lang/String;

.field public Id:Ljava/util/UUID;

.field public IsUserUploaded:Ljava/lang/Boolean;

.field public Name:Ljava/lang/String;

.field public SoundCategory:Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite$WoundCategoryType;

.field public URI:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
