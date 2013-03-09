.class Lcom/htc/android/mail/MailList$36;
.super Ljava/lang/Object;
.source "MailList.java"

# interfaces
.implements Lcom/htc/widget/PositionMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailList;->setListView(Lcom/htc/android/mail/MailList$TabInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailList;

.field final synthetic val$tabInfo_:Lcom/htc/android/mail/MailList$TabInfo;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailList;Lcom/htc/android/mail/MailList$TabInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6530
    iput-object p1, p0, Lcom/htc/android/mail/MailList$36;->this$0:Lcom/htc/android/mail/MailList;

    iput-object p2, p0, Lcom/htc/android/mail/MailList$36;->val$tabInfo_:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public indexOf(I)I
    .locals 1
    .parameter "x"

    .prologue
    .line 6532
    iget-object v0, p0, Lcom/htc/android/mail/MailList$36;->val$tabInfo_:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mExAdapter:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mIndexer:Lcom/htc/android/mail/MailAlphabetIndexer;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/MailAlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    return v0
.end method
