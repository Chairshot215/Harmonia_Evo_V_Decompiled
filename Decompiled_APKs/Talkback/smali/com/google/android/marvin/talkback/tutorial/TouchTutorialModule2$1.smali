.class Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$1;
.super Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;
.source "TouchTutorialModule2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;-><init>(Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;Landroid/content/Context;II)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter "$anonymous2"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$1;->this$0:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;

    .line 53
    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;-><init>(Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method protected populateView(Landroid/widget/TextView;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "text"
    .parameter "label"
    .parameter "icon"

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {p1, p3, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 60
    return-void
.end method
