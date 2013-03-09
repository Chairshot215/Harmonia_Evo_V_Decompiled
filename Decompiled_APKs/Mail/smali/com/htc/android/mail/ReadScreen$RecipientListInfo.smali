.class public Lcom/htc/android/mail/ReadScreen$RecipientListInfo;
.super Ljava/lang/Object;
.source "ReadScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ReadScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecipientListInfo"
.end annotation


# instance fields
.field mainViewContainer:Landroid/view/ViewGroup;

.field receiverlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/ReceiverList;",
            ">;"
        }
    .end annotation
.end field

.field recipientAddress:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/Mailaddress;",
            ">;"
        }
    .end annotation
.end field

.field recipientEmailString:Ljava/lang/String;

.field recipientOrignalAddress:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/Mailaddress;",
            ">;"
        }
    .end annotation
.end field

.field textLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/widget/TextView;)V
    .locals 0
    .parameter "repList"
    .parameter "vContain"
    .parameter "label"

    .prologue
    .line 1380
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1381
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$RecipientListInfo;->recipientEmailString:Ljava/lang/String;

    .line 1382
    iput-object p2, p0, Lcom/htc/android/mail/ReadScreen$RecipientListInfo;->mainViewContainer:Landroid/view/ViewGroup;

    .line 1383
    iput-object p3, p0, Lcom/htc/android/mail/ReadScreen$RecipientListInfo;->textLabel:Landroid/widget/TextView;

    .line 1384
    return-void
.end method
