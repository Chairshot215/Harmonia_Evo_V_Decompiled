.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WPendingLegalDoc;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WPendingLegalDoc"
.end annotation


# instance fields
.field public EffectiveDate:Ljava/util/Date;

.field public TryAgainInterval:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 943
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
