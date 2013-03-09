.class Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$2;
.super Ljava/lang/Object;
.source "DetailHeaderBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;

.field final synthetic val$suggestionCount:I


# direct methods
.method constructor <init>(Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$2;->this$1:Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;

    iput p2, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$2;->val$suggestionCount:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$2;->this$1:Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;

    iget-object v0, v0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;->this$0:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    iget v1, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$2;->val$suggestionCount:I

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setLinkSuggestBubble(I)V

    .line 424
    return-void
.end method
