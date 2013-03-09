.class Lcom/android/mms/ui/SubjectEditor$2;
.super Ljava/lang/Object;
.source "SubjectEditor.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SubjectEditor;->setSubjectChangedListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SubjectEditor;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SubjectEditor;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/mms/ui/SubjectEditor$2;->this$0:Lcom/android/mms/ui/SubjectEditor;

    iput-object p2, p0, Lcom/android/mms/ui/SubjectEditor$2;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .parameter "s"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, newSubject:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsApp;->isUnicodeSubjectLengthShortened()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    invoke-static {}, Lcom/android/mms/MmsApp;->getUnicodeSubjectLimit()I

    move-result v2

    invoke-static {v2}, Lcom/android/mms/ui/SubjectEditor;->access$002(I)I

    .line 125
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {}, Lcom/android/mms/ui/SubjectEditor;->access$000()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 126
    iget-object v2, p0, Lcom/android/mms/ui/SubjectEditor$2;->this$0:Lcom/android/mms/ui/SubjectEditor;

    iget-object v3, p0, Lcom/android/mms/ui/SubjectEditor$2;->this$0:Lcom/android/mms/ui/SubjectEditor;

    #getter for: Lcom/android/mms/ui/SubjectEditor;->subject:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/SubjectEditor;->access$100(Lcom/android/mms/ui/SubjectEditor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SubjectEditor;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v2, p0, Lcom/android/mms/ui/SubjectEditor$2;->val$context:Landroid/content/Context;

    const v3, 0x7f0902e5

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 130
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_3

    .line 131
    invoke-static {}, Lcom/android/mms/ui/SubjectEditor;->access$000()I

    move-result v2

    sput v2, Lcom/android/mms/ui/SubjectEditor;->SUBJECT_MAX_LENGTH:I

    .line 137
    :goto_0
    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    sget v3, Lcom/android/mms/ui/SubjectEditor;->SUBJECT_MAX_LENGTH:I

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    .line 139
    .local v1, subectFilter:[Landroid/text/InputFilter;
    iget-object v2, p0, Lcom/android/mms/ui/SubjectEditor$2;->this$0:Lcom/android/mms/ui/SubjectEditor;

    invoke-virtual {v2, v1}, Lcom/android/mms/ui/SubjectEditor;->setFilters([Landroid/text/InputFilter;)V

    .line 140
    if-eqz p1, :cond_1

    .line 141
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {}, Lcom/android/mms/ui/SubjectEditor;->access$000()I

    move-result v3

    if-le v2, v3, :cond_4

    .line 148
    .end local v1           #subectFilter:[Landroid/text/InputFilter;
    :cond_1
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 149
    iget-object v2, p0, Lcom/android/mms/ui/SubjectEditor$2;->this$0:Lcom/android/mms/ui/SubjectEditor;

    #getter for: Lcom/android/mms/ui/SubjectEditor;->mActivated:Z
    invoke-static {v2}, Lcom/android/mms/ui/SubjectEditor;->access$300(Lcom/android/mms/ui/SubjectEditor;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 150
    iget-object v2, p0, Lcom/android/mms/ui/SubjectEditor$2;->this$0:Lcom/android/mms/ui/SubjectEditor;

    invoke-virtual {v2}, Lcom/android/mms/ui/SubjectEditor;->activate()V

    .line 157
    :cond_2
    :goto_2
    return-void

    .line 135
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/SubjectEditor$2;->this$0:Lcom/android/mms/ui/SubjectEditor;

    #calls: Lcom/android/mms/ui/SubjectEditor;->getDefaultSubjectLengthLimit()I
    invoke-static {v2}, Lcom/android/mms/ui/SubjectEditor;->access$200(Lcom/android/mms/ui/SubjectEditor;)I

    move-result v2

    sput v2, Lcom/android/mms/ui/SubjectEditor;->SUBJECT_MAX_LENGTH:I

    goto :goto_0

    .line 144
    .restart local v1       #subectFilter:[Landroid/text/InputFilter;
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/SubjectEditor$2;->this$0:Lcom/android/mms/ui/SubjectEditor;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/mms/ui/SubjectEditor;->subject:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/mms/ui/SubjectEditor;->access$102(Lcom/android/mms/ui/SubjectEditor;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 151
    .end local v1           #subectFilter:[Landroid/text/InputFilter;
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/SubjectEditor$2;->this$0:Lcom/android/mms/ui/SubjectEditor;

    #getter for: Lcom/android/mms/ui/SubjectEditor;->mWatcher:Lcom/android/mms/ui/StateWatcher;
    invoke-static {v2}, Lcom/android/mms/ui/SubjectEditor;->access$400(Lcom/android/mms/ui/SubjectEditor;)Lcom/android/mms/ui/StateWatcher;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 152
    iget-object v2, p0, Lcom/android/mms/ui/SubjectEditor$2;->this$0:Lcom/android/mms/ui/SubjectEditor;

    #getter for: Lcom/android/mms/ui/SubjectEditor;->mWatcher:Lcom/android/mms/ui/StateWatcher;
    invoke-static {v2}, Lcom/android/mms/ui/SubjectEditor;->access$400(Lcom/android/mms/ui/SubjectEditor;)Lcom/android/mms/ui/StateWatcher;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/mms/ui/StateWatcher;->updateHasSubject(Z)V

    goto :goto_2

    .line 154
    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/SubjectEditor$2;->this$0:Lcom/android/mms/ui/SubjectEditor;

    #getter for: Lcom/android/mms/ui/SubjectEditor;->mWatcher:Lcom/android/mms/ui/StateWatcher;
    invoke-static {v2}, Lcom/android/mms/ui/SubjectEditor;->access$400(Lcom/android/mms/ui/SubjectEditor;)Lcom/android/mms/ui/StateWatcher;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 155
    iget-object v2, p0, Lcom/android/mms/ui/SubjectEditor$2;->this$0:Lcom/android/mms/ui/SubjectEditor;

    #getter for: Lcom/android/mms/ui/SubjectEditor;->mWatcher:Lcom/android/mms/ui/StateWatcher;
    invoke-static {v2}, Lcom/android/mms/ui/SubjectEditor;->access$400(Lcom/android/mms/ui/SubjectEditor;)Lcom/android/mms/ui/StateWatcher;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/StateWatcher;->updateHasSubject(Z)V

    goto :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 160
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 164
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sget v1, Lcom/android/mms/ui/SubjectEditor;->SUBJECT_MAX_LENGTH:I

    if-ne v0, v1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/mms/ui/SubjectEditor$2;->val$context:Landroid/content/Context;

    const v1, 0x7f0902e5

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 168
    :cond_0
    return-void
.end method
