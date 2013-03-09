.class Lcom/android/htcdialer/carhome/carhome$3;
.super Ljava/lang/Object;
.source "carhome.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htcdialer/carhome/carhome;->onCreateCarHome()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/carhome/carhome;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/carhome/carhome;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/htcdialer/carhome/carhome$3;->this$0:Lcom/android/htcdialer/carhome/carhome;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 112
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 113
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    iget-object v1, p0, Lcom/android/htcdialer/carhome/carhome$3;->this$0:Lcom/android/htcdialer/carhome/carhome;

    invoke-virtual {v1, v0}, Lcom/android/htcdialer/carhome/carhome;->startActivity(Landroid/content/Intent;)V

    .line 115
    return-void
.end method
