.class Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$3;
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


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$3;->this$0:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$3;->this$0:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    #calls: Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->updateRadioButtonsByView(Landroid/view/View;)Landroid/util/Pair;
    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->access$400(Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;Landroid/view/View;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$3;->this$0:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->closePanel(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$3;->this$0:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/view/inputmethod/InputMethodSubtype;

    #calls: Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->setInputMethodAndSubtype(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    invoke-static {v3, v1, v2}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->access$500(Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    return-void
.end method
