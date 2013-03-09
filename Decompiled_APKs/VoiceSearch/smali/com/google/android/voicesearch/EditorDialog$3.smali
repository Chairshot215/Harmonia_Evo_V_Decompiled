.class Lcom/google/android/voicesearch/EditorDialog$3;
.super Ljava/lang/Object;
.source "EditorDialog.java"

# interfaces
.implements Lcom/google/android/voicesearch/util/AccountHelper$AccountsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/EditorDialog;->setAction(Lcom/google/android/voicesearch/actions/MultislotVoiceAction;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/EditorDialog;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/EditorDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/google/android/voicesearch/EditorDialog$3;->this$0:Lcom/google/android/voicesearch/EditorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountsAvailable([Landroid/accounts/Account;)V
    .locals 3
    .parameter "accounts"

    .prologue
    .line 155
    array-length v2, p1

    new-array v0, v2, [Ljava/lang/String;

    .line 157
    .local v0, accountNames:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 158
    aget-object v2, p1, v1

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    :cond_0
    iget-object v2, p0, Lcom/google/android/voicesearch/EditorDialog$3;->this$0:Lcom/google/android/voicesearch/EditorDialog;

    #setter for: Lcom/google/android/voicesearch/EditorDialog;->mAccounts:[Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/google/android/voicesearch/EditorDialog;->access$302(Lcom/google/android/voicesearch/EditorDialog;[Ljava/lang/String;)[Ljava/lang/String;

    .line 162
    iget-object v2, p0, Lcom/google/android/voicesearch/EditorDialog$3;->this$0:Lcom/google/android/voicesearch/EditorDialog;

    #getter for: Lcom/google/android/voicesearch/EditorDialog;->mEditor:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;
    invoke-static {v2}, Lcom/google/android/voicesearch/EditorDialog;->access$000(Lcom/google/android/voicesearch/EditorDialog;)Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 163
    iget-object v2, p0, Lcom/google/android/voicesearch/EditorDialog$3;->this$0:Lcom/google/android/voicesearch/EditorDialog;

    #getter for: Lcom/google/android/voicesearch/EditorDialog;->mEditor:Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;
    invoke-static {v2}, Lcom/google/android/voicesearch/EditorDialog;->access$000(Lcom/google/android/voicesearch/EditorDialog;)Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->setAccounts([Ljava/lang/String;)V

    .line 165
    :cond_1
    return-void
.end method
