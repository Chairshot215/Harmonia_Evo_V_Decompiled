.class public Lcom/htc/android/mail/ReadScreen$TagListInfo;
.super Ljava/lang/Object;
.source "ReadScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ReadScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TagListInfo"
.end annotation


# instance fields
.field mTagList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;",
            ">;"
        }
    .end annotation
.end field

.field mainViewContainer:Landroid/view/ViewGroup;

.field textLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/widget/TextView;)V
    .locals 0
    .parameter "vTagContain"
    .parameter "tagLabel"

    .prologue
    .line 1392
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1393
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$TagListInfo;->mainViewContainer:Landroid/view/ViewGroup;

    .line 1394
    iput-object p2, p0, Lcom/htc/android/mail/ReadScreen$TagListInfo;->textLabel:Landroid/widget/TextView;

    .line 1395
    return-void
.end method
