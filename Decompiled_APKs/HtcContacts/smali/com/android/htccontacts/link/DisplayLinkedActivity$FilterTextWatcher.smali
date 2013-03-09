.class public Lcom/android/htccontacts/link/DisplayLinkedActivity$FilterTextWatcher;
.super Ljava/lang/Object;
.source "DisplayLinkedActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/link/DisplayLinkedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FilterTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/link/DisplayLinkedActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1045
    iput-object p1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$FilterTextWatcher;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 1048
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1049
    .local v0, temp:Ljava/lang/String;
    const-string v1, "DisplayLinkedActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--------afterTextChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    sget-object v1, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mFilterString:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mFilterString:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mFilterString:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1051
    :cond_1
    sput-object v0, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mFilterString:Ljava/lang/String;

    .line 1052
    iget-object v1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$FilterTextWatcher;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    sget-object v2, Lcom/android/htccontacts/link/DisplayLinkedActivity;->mFilterString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->doFilter(Ljava/lang/String;)V

    .line 1054
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
    .line 1058
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "buffer"
    .parameter "start"
    .parameter "olen"
    .parameter "nlen"

    .prologue
    .line 1062
    return-void
.end method
