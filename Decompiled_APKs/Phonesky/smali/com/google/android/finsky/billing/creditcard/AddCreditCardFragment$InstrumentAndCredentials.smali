.class Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$InstrumentAndCredentials;
.super Ljava/lang/Object;
.source "AddCreditCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstrumentAndCredentials"
.end annotation


# instance fields
.field private creditCardNumber:Ljava/lang/String;

.field private cvc:Ljava/lang/String;

.field private instrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

.field final synthetic this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V
    .locals 0
    .parameter
    .parameter "creditCardNumber"
    .parameter "cvc"
    .parameter "instrument"

    .prologue
    .line 611
    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$InstrumentAndCredentials;->this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 612
    iput-object p2, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$InstrumentAndCredentials;->creditCardNumber:Ljava/lang/String;

    .line 613
    iput-object p3, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$InstrumentAndCredentials;->cvc:Ljava/lang/String;

    .line 614
    iput-object p4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$InstrumentAndCredentials;->instrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 615
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 605
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$InstrumentAndCredentials;-><init>(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$InstrumentAndCredentials;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 605
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$InstrumentAndCredentials;->creditCardNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$InstrumentAndCredentials;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 605
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$InstrumentAndCredentials;->cvc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$InstrumentAndCredentials;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    .locals 1
    .parameter "x0"

    .prologue
    .line 605
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$InstrumentAndCredentials;->instrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    return-object v0
.end method
