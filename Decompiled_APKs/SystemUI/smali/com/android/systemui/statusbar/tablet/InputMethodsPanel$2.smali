.class Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$2;
.super Ljava/lang/Object;
.source "InputMethodsPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->createInputMethodItem(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

.field final synthetic val$imi:Landroid/view/inputmethod/InputMethodInfo;

.field final synthetic val$settingsActivity:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$2;->this$0:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    iput-object p2, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$2;->val$imi:Landroid/view/inputmethod/InputMethodInfo;

    iput-object p3, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$2;->val$settingsActivity:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$2;->val$imi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$2;->val$settingsActivity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1420

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$2;->this$0:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    #calls: Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->startActivity(Landroid/content/Intent;)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->access$300(Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$2;->this$0:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->closePanel(Z)V

    return-void
.end method
