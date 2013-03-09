.class public Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$Url4PDSwitch;
.super Ljava/lang/Object;
.source "XT9IMEAutoComplete.java"

# interfaces
.implements Lcom/htc/android/htcime/XT9IME/util/PDSwitch$OnDiagnoseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Url4PDSwitch"
.end annotation


# static fields
.field static final CLASS_NAME:Ljava/lang/String; = "Url4PDSwitch"

.field static final HTTP:Ljava/lang/String; = "http://"

.field static final WWW:Ljava/lang/String; = "www."


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;)V
    .locals 0
    .parameter

    .prologue
    .line 1033
    iput-object p1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$Url4PDSwitch;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public judge(Landroid/text/SpannableStringBuilder;I)Z
    .locals 5
    .parameter "befCursorText"
    .parameter "keyType"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1078
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$Url4PDSwitch;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;

    iget-object v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 1080
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 1082
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    .line 1083
    .local v0, lastCh:C
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1106
    .end local v0           #lastCh:C
    :cond_0
    :goto_0
    return v2

    .line 1089
    :cond_1
    const/4 v1, 0x5

    .line 1090
    .local v1, maxLenToDoPD:I
    packed-switch p2, :pswitch_data_0

    .line 1103
    :goto_1
    :pswitch_0
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-ge v4, v1, :cond_0

    move v2, v3

    .line 1106
    goto :goto_0

    .line 1092
    :pswitch_1
    add-int/lit8 v1, v1, 0x1

    .line 1093
    goto :goto_1

    .line 1096
    :pswitch_2
    iget-object v4, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$Url4PDSwitch;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;

    iget-object v4, v4, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    if-eqz v4, :cond_2

    move v2, v3

    .line 1097
    goto :goto_0

    .line 1099
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1090
    nop

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public noiseFilter(Landroid/text/SpannableStringBuilder;)V
    .locals 9
    .parameter "befCursorText"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 1042
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 1043
    .local v5, tmp:Ljava/lang/String;
    const-string v6, "www."

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1044
    .local v3, pos:I
    if-eq v3, v7, :cond_3

    .line 1045
    const-string v6, "www."

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v3, v6

    .line 1052
    :cond_0
    :goto_0
    if-eq v3, v7, :cond_1

    .line 1053
    invoke-virtual {p1, v8, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 1056
    :cond_1
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 1058
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const-class v7, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {p1, v8, v6, v7}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/BackgroundColorSpan;

    .line 1059
    .local v0, bgsp_arr:[Landroid/text/style/BackgroundColorSpan;
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const-class v7, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1, v8, v6, v7}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ForegroundColorSpan;

    .line 1060
    .local v1, fgsp_arr:[Landroid/text/style/ForegroundColorSpan;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v6, v0

    if-ge v2, v6, :cond_2

    .line 1062
    aget-object v6, v0, v2

    invoke-virtual {v6}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v6

    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$Url4PDSwitch;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;

    iget-object v7, v7, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-virtual {v7}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->getSapnBGColor()Landroid/text/style/BackgroundColorSpan;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v7

    if-ne v6, v7, :cond_4

    aget-object v6, v1, v2

    invoke-virtual {v6}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v6

    iget-object v7, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$Url4PDSwitch;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;

    iget-object v7, v7, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-virtual {v7}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->getSapnFGColor()Landroid/text/style/ForegroundColorSpan;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 1065
    aget-object v6, v0, v2

    invoke-virtual {p1, v6}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 1066
    .local v4, start:I
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {p1, v4, v6}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 1073
    .end local v0           #bgsp_arr:[Landroid/text/style/BackgroundColorSpan;
    .end local v1           #fgsp_arr:[Landroid/text/style/ForegroundColorSpan;
    .end local v2           #i:I
    .end local v4           #start:I
    :cond_2
    return-void

    .line 1048
    :cond_3
    const-string v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1049
    if-eq v3, v7, :cond_0

    .line 1050
    const-string v6, "http://"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v3, v6

    goto :goto_0

    .line 1060
    .restart local v0       #bgsp_arr:[Landroid/text/style/BackgroundColorSpan;
    .restart local v1       #fgsp_arr:[Landroid/text/style/ForegroundColorSpan;
    .restart local v2       #i:I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
