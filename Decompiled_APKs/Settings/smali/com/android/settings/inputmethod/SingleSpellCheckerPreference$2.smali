.class Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$2;
.super Ljava/lang/Object;
.source "SingleSpellCheckerPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$2;->this$0:Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 123
    const-string v0, "com.htc.android.htcime/.spellcheck.HTCSpellCheckerService"

    iget-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$2;->this$0:Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;

    #getter for: Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;
    invoke-static {v1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->access$100(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$2;->this$0:Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;

    #calls: Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->onSubtypeButtonClicked_HTC(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->access$200(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;Landroid/view/View;)V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$2;->this$0:Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;

    #calls: Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->onSubtypeButtonClicked(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->access$300(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;Landroid/view/View;)V

    goto :goto_0
.end method
