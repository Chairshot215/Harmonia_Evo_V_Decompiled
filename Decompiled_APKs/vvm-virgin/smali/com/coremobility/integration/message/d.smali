.class public final Lcom/coremobility/integration/message/d;
.super Lcom/coremobility/integration/message/a;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/coremobility/integration/message/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/message/d;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coremobility/integration/message/d;->d:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/integration/message/d;->d:Ljava/lang/String;

    return-object v0
.end method
