.class public Lcom/android/htccontacts/ui/widget/HtcDisableTextKeyListener;
.super Landroid/text/method/TextKeyListener;
.source "HtcDisableTextKeyListener.java"

# interfaces
.implements Landroid/text/InputFilter;


# static fields
.field private static sInstance:Landroid/text/method/TextKeyListener;


# direct methods
.method protected constructor <init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V
    .locals 0
    .parameter "cap"
    .parameter "autotext"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/text/method/TextKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    .line 34
    return-void
.end method

.method public static getInstance()Landroid/text/method/TextKeyListener;
    .locals 3

    .prologue
    .line 37
    sget-object v0, Lcom/android/htccontacts/ui/widget/HtcDisableTextKeyListener;->sInstance:Landroid/text/method/TextKeyListener;

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lcom/android/htccontacts/ui/widget/HtcDisableTextKeyListener;->sInstance:Landroid/text/method/TextKeyListener;

    .line 42
    :goto_0
    return-object v0

    .line 41
    :cond_0
    new-instance v0, Lcom/android/htccontacts/ui/widget/HtcDisableTextKeyListener;

    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/ui/widget/HtcDisableTextKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    sput-object v0, Lcom/android/htccontacts/ui/widget/HtcDisableTextKeyListener;->sInstance:Landroid/text/method/TextKeyListener;

    .line 42
    sget-object v0, Lcom/android/htccontacts/ui/widget/HtcDisableTextKeyListener;->sInstance:Landroid/text/method/TextKeyListener;

    goto :goto_0
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 1
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 47
    const-string v0, ""

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method
