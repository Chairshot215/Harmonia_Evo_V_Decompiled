.class Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$SCICache;
.super Ljava/lang/Object;
.source "SingleSpellCheckerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SCICache"
.end annotation


# instance fields
.field public label:[Ljava/lang/CharSequence;

.field public scs:[Landroid/view/textservice/SpellCheckerSubtype;

.field final synthetic this$0:Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$SCICache;->this$0:Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 257
    return-void
.end method
