.class Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;
.super Ljava/lang/Object;
.source "XT9IME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WordPair"
.end annotation


# static fields
.field public static final PC_BEGS:I = 0x1

.field public static final PC_NULL:I = 0x0

.field public static final PC_N_BEGS:I = 0x2


# instance fields
.field public commonWords:[Ljava/lang/String;

.field private preconditionType:I

.field final synthetic this$2:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;

.field public unCommonWord:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "ucm"
    .parameter "cm"

    .prologue
    .line 6311
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 6312
    return-void
.end method

.method public constructor <init>(Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "ucm"
    .parameter "cm"
    .parameter "type"

    .prologue
    .line 6314
    iput-object p1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;->this$2:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6315
    iput-object p2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;->unCommonWord:Ljava/lang/String;

    .line 6316
    iput-object p3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;->commonWords:[Ljava/lang/String;

    .line 6317
    iput p4, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;->preconditionType:I

    .line 6318
    return-void
.end method


# virtual methods
.method getPermission()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 6324
    iget v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;->preconditionType:I

    packed-switch v1, :pswitch_data_0

    .line 6332
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 6328
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;->this$2:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;

    iget-object v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-virtual {v0}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isBeginningOfSentence()Z

    move-result v0

    goto :goto_0

    .line 6330
    :pswitch_2
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule$WordPair;->this$2:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;

    iget-object v1, v1, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$FamousWordRule;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-virtual {v1}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->isBeginningOfSentence()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 6324
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
