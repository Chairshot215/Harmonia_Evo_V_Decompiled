.class Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactData;
.super Ljava/lang/Object;
.source "AllPeopleListWrapperAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyContactData"
.end annotation


# instance fields
.field public displayName:Ljava/lang/String;

.field public lookup:Ljava/lang/String;

.field public photoId:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactData;->displayName:Ljava/lang/String;

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactData;->photoId:J

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactData;->lookup:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactData;-><init>()V

    return-void
.end method
