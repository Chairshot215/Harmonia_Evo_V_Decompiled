.class Lcom/android/htccontacts/VCardFile;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"


# instance fields
.field private mCanonicalPath:Ljava/lang/String;

.field private mLastModified:J

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter "name"
    .parameter "canonicalPath"
    .parameter "lastModified"

    .prologue
    .line 121
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/android/htccontacts/VCardFile;->mName:Ljava/lang/String;

    .line 123
    iput-object p2, p0, Lcom/android/htccontacts/VCardFile;->mCanonicalPath:Ljava/lang/String;

    .line 124
    iput-wide p3, p0, Lcom/android/htccontacts/VCardFile;->mLastModified:J

    .line 125
    return-void
.end method


# virtual methods
.method public getCanonicalPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/htccontacts/VCardFile;->mCanonicalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/android/htccontacts/VCardFile;->mLastModified:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/htccontacts/VCardFile;->mName:Ljava/lang/String;

    return-object v0
.end method
