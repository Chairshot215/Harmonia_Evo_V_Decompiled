.class Lcom/android/htccontacts/BrowseContactsAllActivity2$SearachInputEditorFocusChangeListener;
.super Ljava/lang/Object;
.source "BrowseContactsAllActivity2.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseContactsAllActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearachInputEditorFocusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;


# direct methods
.method private constructor <init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V
    .locals 0
    .parameter

    .prologue
    .line 3716
    iput-object p1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$SearachInputEditorFocusChangeListener;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;Lcom/android/htccontacts/BrowseContactsAllActivity2$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3716
    invoke-direct {p0, p1}, Lcom/android/htccontacts/BrowseContactsAllActivity2$SearachInputEditorFocusChangeListener;-><init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 3719
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$SearachInputEditorFocusChangeListener;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z
    invoke-static {v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$8200(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3720
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$SearachInputEditorFocusChangeListener;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    iput-boolean p2, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->mInputEditorFocusedInForeground:Z

    .line 3722
    :cond_0
    return-void
.end method
