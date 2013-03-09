.class Lcom/android/htcdialer/Dialer$ContactCardAdapter$2;
.super Ljava/lang/Object;
.source "Dialer.java"

# interfaces
.implements Lcom/android/htcdialer/widget/DialerContactCard$OnCardClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htcdialer/Dialer$ContactCardAdapter;->initailize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htcdialer/Dialer$ContactCardAdapter;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/Dialer$ContactCardAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 7289
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter$2;->this$1:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickCard()V
    .locals 2

    .prologue
    .line 7291
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter$2;->this$1:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    iget-object v0, v0, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    iget-object v1, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter$2;->this$1:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    #getter for: Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mPhoneNumber:Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->access$5600(Lcom/android/htcdialer/Dialer$ContactCardAdapter;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/Dialer;->placeCall(Ljava/lang/String;)V

    .line 7292
    return-void
.end method

.method public onClickDetailButton()V
    .locals 5

    .prologue
    .line 7295
    iget-object v1, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter$2;->this$1:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    iget-object v2, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter$2;->this$1:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    #getter for: Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mdata:Lcom/android/htcdialer/search/SearchableObject;
    invoke-static {v2}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->access$5700(Lcom/android/htcdialer/Dialer$ContactCardAdapter;)Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getContact(Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v0

    .line 7296
    .local v0, contact:Lcom/android/htcdialer/search/SearchableContact;
    if-eqz v0, :cond_0

    iget-wide v1, v0, Lcom/android/htcdialer/search/SearchableContact;->id:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 7297
    iget-object v1, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter$2;->this$1:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    iget-object v1, v1, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    iget-wide v2, v0, Lcom/android/htcdialer/search/SearchableContact;->id:J

    iget-boolean v4, v0, Lcom/android/htcdialer/search/SearchableContact;->isSimContact:Z

    #calls: Lcom/android/htcdialer/Dialer;->viewContactCard(JZ)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/htcdialer/Dialer;->access$4500(Lcom/android/htcdialer/Dialer;JZ)V

    .line 7301
    :goto_0
    return-void

    .line 7299
    :cond_0
    iget-object v1, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter$2;->this$1:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    iget-object v1, v1, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    iget-object v2, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter$2;->this$1:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    iget-object v3, p0, Lcom/android/htcdialer/Dialer$ContactCardAdapter$2;->this$1:Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    #getter for: Lcom/android/htcdialer/Dialer$ContactCardAdapter;->mdata:Lcom/android/htcdialer/search/SearchableObject;
    invoke-static {v3}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->access$5700(Lcom/android/htcdialer/Dialer$ContactCardAdapter;)Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/htcdialer/Dialer;->addToContact(Ljava/lang/String;)V

    goto :goto_0
.end method
