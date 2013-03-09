.class Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfile;
.super Ljava/lang/Object;
.source "BrowseContactsAllActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyProfile"
.end annotation


# instance fields
.field public displayName:Ljava/lang/String;

.field public isAvailable:Z

.field public lookup:Ljava/lang/String;

.field public photoId:J

.field final synthetic this$1:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;


# direct methods
.method private constructor <init>(Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;)V
    .locals 2
    .parameter

    .prologue
    .line 1686
    iput-object p1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfile;->this$1:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1687
    const-string v0, ""

    iput-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfile;->displayName:Ljava/lang/String;

    .line 1688
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfile;->photoId:J

    .line 1689
    const-string v0, ""

    iput-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfile;->lookup:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;Lcom/android/htccontacts/BrowseContactsAllActivity2$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1686
    invoke-direct {p0, p1}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfile;-><init>(Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;)V

    return-void
.end method
