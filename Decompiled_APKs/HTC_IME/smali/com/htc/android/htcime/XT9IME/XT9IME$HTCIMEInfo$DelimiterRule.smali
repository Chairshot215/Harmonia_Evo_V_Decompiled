.class public Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$DelimiterRule;
.super Ljava/lang/Object;
.source "XT9IME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DelimiterRule"
.end annotation


# instance fields
.field protected delimiters:[I

.field protected final delimiters_none:[I

.field protected final delimiters_nrml:[I

.field final synthetic this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 6222
    iput-object p1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$DelimiterRule;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6224
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$DelimiterRule;->delimiters_nrml:[I

    .line 6225
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$DelimiterRule;->delimiters_none:[I

    .line 6226
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$DelimiterRule;->delimiters_nrml:[I

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$DelimiterRule;->delimiters:[I

    return-void

    .line 6224
    :array_0
    .array-data 0x4
        0x2et 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x3ft 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method apply(Ljava/lang/StringBuilder;CZ)Ljava/lang/StringBuilder;
    .locals 3
    .parameter "in_strbdr"
    .parameter "symbol"
    .parameter "forceApply"

    .prologue
    const/16 v2, 0x20

    .line 6269
    if-eqz p3, :cond_1

    .line 6271
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 6272
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6287
    :goto_0
    return-object v1

    .line 6274
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_0

    .line 6278
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$DelimiterRule;->delimiters:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 6279
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$DelimiterRule;->delimiters:[I

    aget v1, v1, v0

    if-ne p2, v1, :cond_3

    .line 6280
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 6281
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_0

    .line 6283
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_0

    .line 6278
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6287
    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_0
.end method

.method changeMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 6231
    packed-switch p1, :pswitch_data_0

    .line 6242
    const-string v0, "Eric_J"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DelimiterRule.changeMode] unknown type("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")! Apply none mode."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6243
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$DelimiterRule;->delimiters_none:[I

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$DelimiterRule;->delimiters:[I

    .line 6245
    :goto_0
    return-void

    .line 6233
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$DelimiterRule;->delimiters_none:[I

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$DelimiterRule;->delimiters:[I

    goto :goto_0

    .line 6238
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$DelimiterRule;->delimiters_none:[I

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$DelimiterRule;->delimiters:[I

    goto :goto_0

    .line 6231
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method isDelimiter(C)Z
    .locals 2
    .parameter "symbol"

    .prologue
    .line 6253
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$DelimiterRule;->delimiters:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 6254
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$DelimiterRule;->delimiters:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 6255
    const/4 v1, 0x1

    .line 6258
    :goto_1
    return v1

    .line 6253
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6258
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
