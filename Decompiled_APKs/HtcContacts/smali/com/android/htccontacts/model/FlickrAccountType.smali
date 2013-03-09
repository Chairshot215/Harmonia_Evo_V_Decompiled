.class public Lcom/android/htccontacts/model/FlickrAccountType;
.super Lcom/android/htccontacts/model/HtcBaseAccountType;
.source "FlickrAccountType.java"


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "flickr"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.htc.socialnetwork.flickr"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "resPackageName"

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/model/HtcBaseAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    const-string v0, "com.htc.socialnetwork.flickr"

    iput-object v0, p0, Lcom/android/htccontacts/model/AccountType;->accountType:Ljava/lang/String;

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/model/AccountType;->readOnly:Z

    .line 14
    return-void
.end method


# virtual methods
.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method protected inflateItem(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/FlickrAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/FlickrAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 27
    return-void
.end method

.method public isGroupMembershipEditable()Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method
