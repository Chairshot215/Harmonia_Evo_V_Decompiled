.class public Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;
.super Ljava/lang/Object;
.source "TipSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/tutorial/TipSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Tip2Status"
.end annotation


# static fields
.field public static final MAX_CHAR_COUNT:I = 0x64

.field public static final MAX_DEL_COUNT:I = 0x8


# instance fields
.field private mCharCount:I

.field private mDelCount:I

.field final synthetic this$0:Lcom/htc/android/htcime/tutorial/TipSystem;


# direct methods
.method protected constructor <init>(Lcom/htc/android/htcime/tutorial/TipSystem;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 180
    iput-object p1, p0, Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;->this$0:Lcom/htc/android/htcime/tutorial/TipSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;->mCharCount:I

    .line 191
    iput v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;->mDelCount:I

    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 180
    iget v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;->mCharCount:I

    return v0
.end method

.method static synthetic access$108(Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 180
    iget v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;->mCharCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;->mCharCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 180
    iget v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;->mDelCount:I

    return v0
.end method

.method static synthetic access$208(Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 180
    iget v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;->mDelCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;->mDelCount:I

    return v0
.end method

.method private initStatus()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 193
    iput v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;->mCharCount:I

    .line 194
    iput v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;->mDelCount:I

    .line 195
    return-void
.end method


# virtual methods
.method public DEBUG()V
    .locals 3

    .prologue
    .line 197
    const-string v0, "TipService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tip2mCharCount - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;->mCharCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string v0, "TipService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tip2mDelCount - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;->mDelCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method

.method public clearStatus()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;->this$0:Lcom/htc/android/htcime/tutorial/TipSystem;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip2Bubble:I

    .line 184
    invoke-direct {p0}, Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;->initStatus()V

    .line 185
    return-void
.end method
