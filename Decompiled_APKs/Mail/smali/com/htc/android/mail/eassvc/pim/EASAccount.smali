.class public Lcom/htc/android/mail/eassvc/pim/EASAccount;
.super Ljava/lang/Object;
.source "EASAccount.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/android/mail/eassvc/pim/EASAccount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public account_flags:I

.field public alwaysBccMyself:I

.field public askBeforeDelete:I

.field public defaultAccount:I

.field public deleteFromServer:I

.field public desc:Ljava/lang/String;

.field public draftFolder:Ljava/lang/String;

.field public draftFolderText:Ljava/lang/String;

.field public emailAddress:Ljava/lang/String;

.field public enableSDSave:I

.field public fetchMailNum:I

.field public fontSize:I

.field public inPort:I

.field public inServer:Ljava/lang/String;

.field public initalScale:I

.field public name:Ljava/lang/String;

.field public nextFetchTime:I

.field public outPort:I

.field public outServer:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public pollFrequencyNumber:I

.field public previewLinesNumber:I

.field public protocol:I

.field public provider:Ljava/lang/String;

.field public replyWithText:I

.field public sentFolder:Ljava/lang/String;

.field public sentFolderText:Ljava/lang/String;

.field public signature:Ljava/lang/String;

.field public sizeLimit:I

.field public trashFolder:Ljava/lang/String;

.field public trashFolderText:Ljava/lang/String;

.field public useSSLin:I

.field public useSSLout:I

.field public useSignature:I

.field public userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/htc/android/mail/eassvc/pim/EASAccount$1;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/pim/EASAccount$1;-><init>()V

    sput-object v0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->protocol:I

    .line 47
    iput v2, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->useSSLin:I

    .line 48
    iput v2, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->useSSLout:I

    .line 49
    iput v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->useSignature:I

    .line 50
    iput v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->sizeLimit:I

    .line 51
    iput v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->pollFrequencyNumber:I

    .line 52
    iput v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->fetchMailNum:I

    .line 53
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->previewLinesNumber:I

    .line 54
    iput v2, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->fontSize:I

    .line 55
    iput v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->deleteFromServer:I

    .line 56
    iput v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->alwaysBccMyself:I

    .line 57
    iput v2, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->askBeforeDelete:I

    .line 58
    iput v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->enableSDSave:I

    .line 59
    iput v2, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->replyWithText:I

    .line 60
    iput v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->defaultAccount:I

    .line 61
    const-string v0, "draft"

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->draftFolder:Ljava/lang/String;

    .line 62
    const-string v0, "draft"

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->draftFolderText:Ljava/lang/String;

    .line 63
    iput v1, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->initalScale:I

    .line 64
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 122
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->name:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->emailAddress:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->userName:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->password:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->desc:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->protocol:I

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->inServer:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->inPort:I

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->outServer:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->outPort:I

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->useSSLin:I

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->useSSLout:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->useSignature:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->sizeLimit:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->pollFrequencyNumber:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->fetchMailNum:I

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->previewLinesNumber:I

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->fontSize:I

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->deleteFromServer:I

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->alwaysBccMyself:I

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->askBeforeDelete:I

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->enableSDSave:I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->signature:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->nextFetchTime:I

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->provider:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->replyWithText:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->defaultAccount:I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->trashFolder:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->trashFolderText:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->sentFolder:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->sentFolderText:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->draftFolder:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->draftFolderText:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->account_flags:I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->initalScale:I

    .line 158
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/android/mail/eassvc/pim/EASAccount$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/pim/EASAccount;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->emailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->userName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->desc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->protocol:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->inServer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->inPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->outServer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->outPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->useSSLin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->useSSLout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->useSignature:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->sizeLimit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->pollFrequencyNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->fetchMailNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->previewLinesNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->fontSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->deleteFromServer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->alwaysBccMyself:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->askBeforeDelete:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->enableSDSave:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->signature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->nextFetchTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->provider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->replyWithText:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->defaultAccount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->trashFolder:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->trashFolderText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->sentFolder:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->sentFolderText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->draftFolder:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->draftFolderText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->account_flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASAccount;->initalScale:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    return-void
.end method
