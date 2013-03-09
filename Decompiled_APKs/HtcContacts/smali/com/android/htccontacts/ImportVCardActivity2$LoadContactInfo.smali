.class public Lcom/android/htccontacts/ImportVCardActivity2$LoadContactInfo;
.super Ljava/lang/Object;
.source "ImportVCardActivity2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ImportVCardActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadContactInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ImportVCardActivity2;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ImportVCardActivity2;)V
    .locals 0
    .parameter

    .prologue
    .line 1847
    iput-object p1, p0, Lcom/android/htccontacts/ImportVCardActivity2$LoadContactInfo;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1848
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1851
    const-string v2, "ImportVCardActivity2"

    const-string v3, "start LoadContactInfo.run()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity2$LoadContactInfo;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    invoke-virtual {v2}, Lcom/android/htccontacts/ImportVCardActivity2;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1853
    new-instance v1, Lcom/android/vcard/VCardSourceDetector;

    invoke-direct {v1}, Lcom/android/vcard/VCardSourceDetector;-><init>()V

    .line 1854
    .local v1, detector:Lcom/android/vcard/VCardSourceDetector;
    invoke-virtual {v1}, Lcom/android/vcard/VCardSourceDetector;->getEstimatedCharset()Ljava/lang/String;

    move-result-object v0

    .line 1855
    .local v0, charset:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity2$LoadContactInfo;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity2$LoadContactInfo;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity2;->mVcard:[B
    invoke-static {v3}, Lcom/android/htccontacts/ImportVCardActivity2;->access$2200(Lcom/android/htccontacts/ImportVCardActivity2;)[B

    move-result-object v3

    const/4 v4, 0x0

    #calls: Lcom/android/htccontacts/ImportVCardActivity2;->doActuallyReadOneVCard([BLcom/android/htccontacts/model/AccountWithDataSet;Ljava/lang/String;Lcom/android/vcard/VCardSourceDetector;)Z
    invoke-static {v2, v3, v4, v0, v1}, Lcom/android/htccontacts/ImportVCardActivity2;->access$2300(Lcom/android/htccontacts/ImportVCardActivity2;[BLcom/android/htccontacts/model/AccountWithDataSet;Ljava/lang/String;Lcom/android/vcard/VCardSourceDetector;)Z

    .line 1857
    .end local v0           #charset:Ljava/lang/String;
    .end local v1           #detector:Lcom/android/vcard/VCardSourceDetector;
    :cond_0
    return-void
.end method
