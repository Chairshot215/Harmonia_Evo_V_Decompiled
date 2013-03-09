.class public Lcom/htc/android/mail/ProviderListItem$ProviderListItemAttr;
.super Ljava/lang/Object;
.source "ProviderListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ProviderListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProviderListItemAttr"
.end annotation


# instance fields
.field public description:Ljava/lang/String;

.field public domain:Ljava/lang/String;

.field public id:J

.field public inProtocol:I

.field public provider:Ljava/lang/String;

.field public resid:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;)V
    .locals 2
    .parameter "provider"
    .parameter "description"
    .parameter "inProtocol"
    .parameter "resid"
    .parameter "id"
    .parameter "domain"

    .prologue
    const/4 v0, 0x0

    .line 105
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput v0, p0, Lcom/htc/android/mail/ProviderListItem$ProviderListItemAttr;->inProtocol:I

    .line 102
    iput v0, p0, Lcom/htc/android/mail/ProviderListItem$ProviderListItemAttr;->resid:I

    .line 103
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/android/mail/ProviderListItem$ProviderListItemAttr;->id:J

    .line 106
    iput-object p1, p0, Lcom/htc/android/mail/ProviderListItem$ProviderListItemAttr;->provider:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lcom/htc/android/mail/ProviderListItem$ProviderListItemAttr;->description:Ljava/lang/String;

    .line 108
    iput p3, p0, Lcom/htc/android/mail/ProviderListItem$ProviderListItemAttr;->inProtocol:I

    .line 109
    iput p4, p0, Lcom/htc/android/mail/ProviderListItem$ProviderListItemAttr;->resid:I

    .line 110
    iput-wide p5, p0, Lcom/htc/android/mail/ProviderListItem$ProviderListItemAttr;->id:J

    .line 111
    iput-object p7, p0, Lcom/htc/android/mail/ProviderListItem$ProviderListItemAttr;->domain:Ljava/lang/String;

    .line 112
    return-void
.end method
