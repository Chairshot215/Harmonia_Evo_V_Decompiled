.class Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay$1;
.super Ljava/lang/Object;
.source "ContactEditorView2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay;->obtainDisplayStringDelayed(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/ui/widget/DelayStringCallback;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay;

.field final synthetic val$aCall:Lcom/android/htccontacts/ui/widget/DelayStringCallback;

.field final synthetic val$aDelta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

.field final synthetic val$aKind:Lcom/android/htccontacts/model/DataKind;

.field final synthetic val$aState:Lcom/android/htccontacts/model/EntityDelta;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay;Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/ui/widget/DelayStringCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1213
    iput-object p1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay$1;->this$0:Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay;

    iput-object p2, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay$1;->val$aKind:Lcom/android/htccontacts/model/DataKind;

    iput-object p3, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay$1;->val$aDelta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    iput-object p4, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay$1;->val$aState:Lcom/android/htccontacts/model/EntityDelta;

    iput-object p5, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay$1;->val$aCall:Lcom/android/htccontacts/ui/widget/DelayStringCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1215
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay$1;->this$0:Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay;

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay$1;->val$aKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v3, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay$1;->val$aDelta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay$1;->val$aState:Lcom/android/htccontacts/model/EntityDelta;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay;->obtainDisplayString(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Lcom/android/htccontacts/model/EntityDelta;)Ljava/lang/String;

    move-result-object v0

    .line 1216
    .local v0, string:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay$1;->val$aCall:Lcom/android/htccontacts/ui/widget/DelayStringCallback;

    invoke-virtual {v1, v0}, Lcom/android/htccontacts/ui/widget/DelayStringCallback;->callBack(Ljava/lang/String;)V

    .line 1217
    return-void
.end method
