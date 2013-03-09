.class Lcom/google/android/setupwizard/NoAccountTosActivity$LinkSpan;
.super Landroid/text/style/ClickableSpan;
.source "NoAccountTosActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupwizard/NoAccountTosActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinkSpan"
.end annotation


# instance fields
.field private mParent:Lcom/google/android/setupwizard/NoAccountTosActivity;

.field private mPolicy:Lcom/google/android/setupwizard/NoAccountTosActivity$AndroidPolicy;


# direct methods
.method private constructor <init>(Lcom/google/android/setupwizard/NoAccountTosActivity;Lcom/google/android/setupwizard/NoAccountTosActivity$AndroidPolicy;)V
    .locals 0
    .parameter "parent"
    .parameter "policy"

    .prologue
    .line 227
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 228
    iput-object p1, p0, Lcom/google/android/setupwizard/NoAccountTosActivity$LinkSpan;->mParent:Lcom/google/android/setupwizard/NoAccountTosActivity;

    .line 229
    iput-object p2, p0, Lcom/google/android/setupwizard/NoAccountTosActivity$LinkSpan;->mPolicy:Lcom/google/android/setupwizard/NoAccountTosActivity$AndroidPolicy;

    .line 230
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/setupwizard/NoAccountTosActivity;Lcom/google/android/setupwizard/NoAccountTosActivity$AndroidPolicy;Lcom/google/android/setupwizard/NoAccountTosActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 218
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupwizard/NoAccountTosActivity$LinkSpan;-><init>(Lcom/google/android/setupwizard/NoAccountTosActivity;Lcom/google/android/setupwizard/NoAccountTosActivity$AndroidPolicy;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "widget"

    .prologue
    .line 234
    new-instance v0, Lcom/google/android/setupwizard/NoAccountTosActivity$WebViewDialog;

    iget-object v1, p0, Lcom/google/android/setupwizard/NoAccountTosActivity$LinkSpan;->mParent:Lcom/google/android/setupwizard/NoAccountTosActivity;

    iget-object v2, p0, Lcom/google/android/setupwizard/NoAccountTosActivity$LinkSpan;->mPolicy:Lcom/google/android/setupwizard/NoAccountTosActivity$AndroidPolicy;

    invoke-direct {v0, v1, v2}, Lcom/google/android/setupwizard/NoAccountTosActivity$WebViewDialog;-><init>(Lcom/google/android/setupwizard/NoAccountTosActivity;Lcom/google/android/setupwizard/NoAccountTosActivity$AndroidPolicy;)V

    .line 235
    .local v0, dlg:Lcom/google/android/setupwizard/NoAccountTosActivity$WebViewDialog;
    invoke-virtual {v0}, Lcom/google/android/setupwizard/NoAccountTosActivity$WebViewDialog;->show()V

    .line 236
    return-void
.end method
