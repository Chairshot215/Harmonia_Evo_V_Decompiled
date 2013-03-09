.class public Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;
.super Ljava/lang/Object;
.source "SIPSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/util/SIPSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "switchPair"
.end annotation


# instance fields
.field private display:Ljava/lang/String;

.field private lang:I

.field private sip:I

.field final synthetic this$0:Lcom/htc/android/htcime/util/SIPSwitcher;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/util/SIPSwitcher;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 680
    const-string v0, ""

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;-><init>(Lcom/htc/android/htcime/util/SIPSwitcher;IILjava/lang/String;)V

    .line 681
    return-void
.end method

.method public constructor <init>(Lcom/htc/android/htcime/util/SIPSwitcher;IILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "s"
    .parameter "l"
    .parameter "d"

    .prologue
    .line 688
    iput-object p1, p0, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->this$0:Lcom/htc/android/htcime/util/SIPSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 689
    iput p2, p0, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->sip:I

    .line 690
    iput p3, p0, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->lang:I

    .line 691
    iput-object p4, p0, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->display:Ljava/lang/String;

    .line 692
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 668
    iget v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->sip:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 668
    iget v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->lang:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 668
    iget-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->display:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sip = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->sip:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lang = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->lang:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", display - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->display:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
