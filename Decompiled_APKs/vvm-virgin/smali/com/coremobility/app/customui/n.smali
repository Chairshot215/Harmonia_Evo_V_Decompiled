.class public final Lcom/coremobility/app/customui/n;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/coremobility/app/customui/n;->a:I

    iput-object p1, p0, Lcom/coremobility/app/customui/n;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/coremobility/app/customui/n;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/coremobility/app/customui/n;->a:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/customui/n;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/customui/n;->c:Ljava/lang/String;

    return-object v0
.end method
