.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundSetComposite;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WSoundSetComposite"
.end annotation


# instance fields
.field public Id:Ljava/util/UUID;

.field public Name:Ljava/lang/String;

.field public Sounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WSoundComposite;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
