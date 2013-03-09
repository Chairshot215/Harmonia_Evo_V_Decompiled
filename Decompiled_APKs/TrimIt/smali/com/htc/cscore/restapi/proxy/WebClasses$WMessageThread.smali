.class public Lcom/htc/cscore/restapi/proxy/WebClasses$WMessageThread;
.super Ljava/lang/Object;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WMessageThread"
.end annotation


# instance fields
.field public AggregatePersonList:Lcom/htc/cscore/restapi/proxy/WebClasses$WAggregatePerson;

.field public MessageList:Lcom/htc/cscore/restapi/proxy/WebClasses$WMessage;

.field public PhoneNumber:Ljava/lang/String;

.field public PhoneNumberType:I

.field public ThreadId:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
