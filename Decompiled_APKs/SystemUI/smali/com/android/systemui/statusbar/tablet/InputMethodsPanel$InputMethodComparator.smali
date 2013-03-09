.class Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$InputMethodComparator;
.super Ljava/lang/Object;
.source "InputMethodsPanel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputMethodComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/inputmethod/InputMethodInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$InputMethodComparator;->this$0:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$InputMethodComparator;-><init>(Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;)V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodInfo;)I
    .locals 4

    if-nez p2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    if-nez p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$InputMethodComparator;->this$0:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->access$200(Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;)Landroid/content/pm/PackageManager;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$InputMethodComparator;->this$0:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->access$200(Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$InputMethodComparator;->this$0:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->access$200(Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/view/inputmethod/InputMethodInfo;

    check-cast p2, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$InputMethodComparator;->compare(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodInfo;)I

    move-result v0

    return v0
.end method
