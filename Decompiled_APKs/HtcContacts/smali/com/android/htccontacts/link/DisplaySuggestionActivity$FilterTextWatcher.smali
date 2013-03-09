.class public Lcom/android/htccontacts/link/DisplaySuggestionActivity$FilterTextWatcher;
.super Ljava/lang/Object;
.source "DisplaySuggestionActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/link/DisplaySuggestionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FilterTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1193
    iput-object p1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$FilterTextWatcher;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 1195
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1197
    .local v0, temp:Ljava/lang/String;
    sget-object v1, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mFilterString:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mFilterString:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mFilterString:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1198
    :cond_1
    sput-object v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mFilterString:Ljava/lang/String;

    .line 1199
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$FilterTextWatcher;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    sget-object v2, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mFilterString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->doFilter(Ljava/lang/String;)V

    .line 1201
    :cond_2
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "buffer"
    .parameter "start"
    .parameter "olen"
    .parameter "nlen"

    .prologue
    .line 1205
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "buffer"
    .parameter "start"
    .parameter "olen"
    .parameter "nlen"

    .prologue
    .line 1209
    return-void
.end method
