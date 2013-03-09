.class public Lcom/htc/android/mail/MailCommon$SupportFileList;
.super Ljava/lang/Object;
.source "MailCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SupportFileList"
.end annotation


# instance fields
.field private extension:Ljava/lang/String;

.field private mExtensionToMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private systemMimetypeMap:Landroid/webkit/MimeTypeMap;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .parameter "filePath"
    .parameter "c"

    .prologue
    .line 1836
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1834
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailCommon$SupportFileList;->systemMimetypeMap:Landroid/webkit/MimeTypeMap;

    .line 1837
    invoke-static {p1}, Lcom/htc/android/mail/MailCommon;->getSubFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailCommon$SupportFileList;->extension:Ljava/lang/String;

    .line 1838
    return-void
.end method

.method private getMimeTypeMap()V
    .locals 2

    .prologue
    .line 1864
    iget-object v0, p0, Lcom/htc/android/mail/MailCommon$SupportFileList;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 1865
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/MailCommon$SupportFileList;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    .line 1868
    :cond_0
    const-string v0, "png"

    const-string v1, "image/png"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    const-string v0, "jpg"

    const-string v1, "image/jpeg"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1870
    const-string v0, "jpeg"

    const-string v1, "image/jpeg"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    const-string v0, "bmp"

    const-string v1, "image/bmp"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    const-string v0, "bmp"

    const-string v1, "image/x-ms-bmp"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    const-string v0, "gif"

    const-string v1, "image/gif"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    const-string v0, "mpo"

    const-string v1, "image/mpo"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    const-string v0, "jps"

    const-string v1, "image/jps"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1876
    const-string v0, "mp3"

    const-string v1, "audio/mpeg"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1877
    const-string v0, "mid"

    const-string v1, "audio/midi"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    const-string v0, "midi"

    const-string v1, "audio/midi"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1879
    const-string v0, "wav"

    const-string v1, "audio/x-wav"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1880
    const-string v0, "m4a"

    const-string v1, "audio/mp4"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    const-string v0, "amr"

    const-string v1, "audio/amr"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1882
    const-string v0, "3gp"

    const-string v1, "video/3gpp"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    const-string v0, "3gpp"

    const-string v1, "video/3gpp"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    const-string v0, "3g2"

    const-string v1, "video/3gpp2"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1885
    const-string v0, "3gpp2"

    const-string v1, "video/3gpp2"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    const-string v0, "ogg"

    const-string v1, "application/ogg"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    const-string v0, "mp4"

    const-string v1, "video/mp4"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    const-string v0, "aac"

    const-string v1, "audio/mp4"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1889
    const-string v0, "msg"

    const-string v1, "message/rfc822"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    const-string v0, "eml"

    const-string v1, "message/rfc822"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1891
    const-string v0, "htm"

    const-string v1, "text/html"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    const-string v0, "html"

    const-string v1, "text/html"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    const-string v0, "zip"

    const-string v1, "application/zip"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1894
    const-string v0, "wmv"

    const-string v1, "video/x-ms-wmv"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    const-string v0, "avi"

    const-string v1, "video/x-msvideo"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1896
    const-string v0, "apk"

    const-string v1, "application/vnd.android.package-archive"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1897
    const-string v0, "rtf"

    const-string v1, "application/rtf"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1900
    sget-boolean v0, Lcom/htc/android/mail/Mail;->Hero_Project:Z

    if-eqz v0, :cond_1

    .line 1901
    const-string v0, "pdf"

    const-string v1, "application/pdf"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1902
    const-string v0, "doc"

    const-string v1, "application/msword"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    const-string v0, "xls"

    const-string v1, "application/vnd.ms-excel"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    const-string v0, "ppt"

    const-string v1, "application/vnd.ms-powerpoint"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1905
    const-string v0, "docx"

    const-string v1, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1906
    const-string v0, "xlsx"

    const-string v1, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1907
    const-string v0, "pptx"

    const-string v1, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1908
    const-string v0, "docm"

    const-string v1, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    const-string v0, "xlsm"

    const-string v1, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    const-string v0, "pptm"

    const-string v1, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    const-string v0, "pps"

    const-string v1, "application/vnd.ms-powerpoint"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    const-string v0, "txt"

    const-string v1, "text/plain"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailCommon$SupportFileList;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1916
    :cond_1
    return-void
.end method

.method private loadEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "extension"
    .parameter "mimetype"

    .prologue
    .line 1858
    iget-object v0, p0, Lcom/htc/android/mail/MailCommon$SupportFileList;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1859
    iget-object v0, p0, Lcom/htc/android/mail/MailCommon$SupportFileList;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1861
    :cond_0
    return-void
.end method


# virtual methods
.method public checkExtensionSupportable()Z
    .locals 2

    .prologue
    .line 1920
    iget-object v0, p0, Lcom/htc/android/mail/MailCommon$SupportFileList;->extension:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1921
    const/4 v0, 0x0

    .line 1927
    :goto_0
    return v0

    .line 1924
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailCommon$SupportFileList;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 1925
    invoke-direct {p0}, Lcom/htc/android/mail/MailCommon$SupportFileList;->getMimeTypeMap()V

    .line 1927
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailCommon$SupportFileList;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/htc/android/mail/MailCommon$SupportFileList;->extension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public checkMimeTypeSupportable(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimetype"

    .prologue
    .line 1931
    if-nez p1, :cond_0

    .line 1932
    const/4 v0, 0x0

    .line 1937
    :goto_0
    return v0

    .line 1934
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailCommon$SupportFileList;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 1935
    invoke-direct {p0}, Lcom/htc/android/mail/MailCommon$SupportFileList;->getMimeTypeMap()V

    .line 1937
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailCommon$SupportFileList;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1841
    iget-object v0, p0, Lcom/htc/android/mail/MailCommon$SupportFileList;->extension:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/mail/MailCommon$SupportFileList;->extension:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1842
    iget-object v0, p0, Lcom/htc/android/mail/MailCommon$SupportFileList;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 1843
    invoke-direct {p0}, Lcom/htc/android/mail/MailCommon$SupportFileList;->getMimeTypeMap()V

    .line 1845
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailCommon$SupportFileList;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/htc/android/mail/MailCommon$SupportFileList;->extension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1847
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMimetypeFromSystem(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "filepath"

    .prologue
    .line 1851
    iget-object v2, p0, Lcom/htc/android/mail/MailCommon$SupportFileList;->systemMimetypeMap:Landroid/webkit/MimeTypeMap;

    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1852
    .local v0, extension:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/mail/MailCommon$SupportFileList;->systemMimetypeMap:Landroid/webkit/MimeTypeMap;

    invoke-virtual {v2, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1853
    .local v1, mimetype:Ljava/lang/String;
    if-nez v1, :cond_0

    const-string v1, "application/octet-stream"

    .line 1854
    .end local v1           #mimetype:Ljava/lang/String;
    :cond_0
    return-object v1
.end method
