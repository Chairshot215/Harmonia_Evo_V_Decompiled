.class public Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;
.super Ljava/lang/Object;
.source "SIPSwitcherHWKB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/util/SIPSwitcherHWKB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "switchPair"
.end annotation


# instance fields
.field private lang:I

.field private sip:I

.field final synthetic this$0:Lcom/htc/android/htcime/util/SIPSwitcherHWKB;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/util/SIPSwitcherHWKB;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 413
    invoke-direct {p0, p1, v0, v0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;-><init>(Lcom/htc/android/htcime/util/SIPSwitcherHWKB;II)V

    .line 414
    return-void
.end method

.method public constructor <init>(Lcom/htc/android/htcime/util/SIPSwitcherHWKB;II)V
    .locals 0
    .parameter
    .parameter "s"
    .parameter "l"

    .prologue
    .line 421
    iput-object p1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->this$0:Lcom/htc/android/htcime/util/SIPSwitcherHWKB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput p2, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->sip:I

    .line 423
    iput p3, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->lang:I

    .line 424
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 403
    iget v0, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->sip:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 403
    iget v0, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->lang:I

    return v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sip = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->sip:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lang = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->lang:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
