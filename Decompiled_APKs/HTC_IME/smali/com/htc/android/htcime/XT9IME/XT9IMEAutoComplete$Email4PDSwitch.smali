.class public Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$Email4PDSwitch;
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
    name = "Email4PDSwitch"
.end annotation


# static fields
.field static final AT:C = '@'

.field static final CLASS_NAME:Ljava/lang/String; = "Email4PDSwitch"


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;)V
    .locals 0
    .parameter

    .prologue
    .line 958
    iput-object p1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$Email4PDSwitch;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public judge(Landroid/text/SpannableStringBuilder;I)Z
    .locals 5
    .parameter "befCursorText"
    .parameter "keyType"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 996
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 1029
    :cond_0
    :goto_0
    return v1

    .line 1000
    :cond_1
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$Email4PDSwitch;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 1002
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-gt v3, v2, :cond_0

    .line 1005
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-ne v3, v2, :cond_2

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x40

    if-ne v3, v4, :cond_0

    .line 1012
    :cond_2
    const/4 v0, 0x5

    .line 1013
    .local v0, maxLenToDoPD:I
    packed-switch p2, :pswitch_data_0

    .line 1026
    :goto_1
    :pswitch_0
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-ge v3, v0, :cond_0

    move v1, v2

    .line 1029
    goto :goto_0

    .line 1015
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 1016
    goto :goto_1

    .line 1019
    :pswitch_2
    iget-object v3, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$Email4PDSwitch;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;

    iget-object v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mPasteCandString:Ljava/lang/String;

    if-eqz v3, :cond_3

    move v1, v2

    .line 1020
    goto :goto_0

    .line 1022
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1013
    nop

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public noiseFilter(Landroid/text/SpannableStringBuilder;)V
    .locals 8
    .parameter "befCursorText"

    .prologue
    const/4 v7, 0x0

    .line 967
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x40

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 968
    .local v3, pos:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 969
    invoke-virtual {p1, v7, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 974
    :goto_0
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 976
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const-class v6, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {p1, v7, v5, v6}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/BackgroundColorSpan;

    .line 977
    .local v0, bgsp_arr:[Landroid/text/style/BackgroundColorSpan;
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const-class v6, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1, v7, v5, v6}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ForegroundColorSpan;

    .line 978
    .local v1, fgsp_arr:[Landroid/text/style/ForegroundColorSpan;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, v0

    if-ge v2, v5, :cond_0

    .line 980
    aget-object v5, v0, v2

    invoke-virtual {v5}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v5

    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$Email4PDSwitch;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;

    iget-object v6, v6, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-virtual {v6}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->getSapnBGColor()Landroid/text/style/BackgroundColorSpan;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v6

    if-ne v5, v6, :cond_2

    aget-object v5, v1, v2

    invoke-virtual {v5}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v5

    iget-object v6, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$Email4PDSwitch;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;

    iget-object v6, v6, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->mHTCIMEInfo:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-virtual {v6}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->getSapnFGColor()Landroid/text/style/ForegroundColorSpan;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 983
    aget-object v5, v0, v2

    invoke-virtual {p1, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 984
    .local v4, start:I
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 991
    .end local v0           #bgsp_arr:[Landroid/text/style/BackgroundColorSpan;
    .end local v1           #fgsp_arr:[Landroid/text/style/ForegroundColorSpan;
    .end local v2           #i:I
    .end local v4           #start:I
    :cond_0
    return-void

    .line 971
    :cond_1
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {p1, v7, v5}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 978
    .restart local v0       #bgsp_arr:[Landroid/text/style/BackgroundColorSpan;
    .restart local v1       #fgsp_arr:[Landroid/text/style/ForegroundColorSpan;
    .restart local v2       #i:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
