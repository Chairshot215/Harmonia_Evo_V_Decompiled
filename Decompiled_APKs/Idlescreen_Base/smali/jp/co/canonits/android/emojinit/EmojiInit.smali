.class public Ljp/co/canonits/android/emojinit/EmojiInit;
.super Ljava/lang/Object;
.source "EmojiInit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/canonits/android/emojinit/EmojiInit$CopyTask;,
        Ljp/co/canonits/android/emojinit/EmojiInit$OnCompletionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EmojiInit"

.field private static mCopyTask:Ljp/co/canonits/android/emojinit/EmojiInit$CopyTask;

.field private static mDialog:Landroid/app/ProgressDialog;

.field private static mListener:Ljp/co/canonits/android/emojinit/EmojiInit$OnCompletionListener;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    sput-object v0, Ljp/co/canonits/android/emojinit/EmojiInit;->mDialog:Landroid/app/ProgressDialog;

    .line 22
    sput-object v0, Ljp/co/canonits/android/emojinit/EmojiInit;->mCopyTask:Ljp/co/canonits/android/emojinit/EmojiInit$CopyTask;

    .line 23
    sput-object v0, Ljp/co/canonits/android/emojinit/EmojiInit;->mListener:Ljp/co/canonits/android/emojinit/EmojiInit$OnCompletionListener;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/canonits/android/emojinit/EmojiInit;->mContext:Landroid/content/Context;

    .line 16
    return-void
.end method

.method static synthetic access$0(Ljp/co/canonits/android/emojinit/EmojiInit;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Ljp/co/canonits/android/emojinit/EmojiInit;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Ljp/co/canonits/android/emojinit/EmojiInit$CopyTask;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    sput-object p0, Ljp/co/canonits/android/emojinit/EmojiInit;->mCopyTask:Ljp/co/canonits/android/emojinit/EmojiInit$CopyTask;

    return-void
.end method

.method static synthetic access$2()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Ljp/co/canonits/android/emojinit/EmojiInit;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3(Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    sput-object p0, Ljp/co/canonits/android/emojinit/EmojiInit;->mDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$4()Ljp/co/canonits/android/emojinit/EmojiInit$OnCompletionListener;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Ljp/co/canonits/android/emojinit/EmojiInit;->mListener:Ljp/co/canonits/android/emojinit/EmojiInit$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$5(Ljp/co/canonits/android/emojinit/EmojiInit$OnCompletionListener;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    sput-object p0, Ljp/co/canonits/android/emojinit/EmojiInit;->mListener:Ljp/co/canonits/android/emojinit/EmojiInit$OnCompletionListener;

    return-void
.end method

.method public static canUseEmoji(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 27
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/jp.co.canonits.android.emojidisplayprovider/copy_complete.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    const/4 v1, 0x1

    .line 32
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createMakeEmojiDialog(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 144
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Ljp/co/canonits/android/emojinit/EmojiInit;->mDialog:Landroid/app/ProgressDialog;

    .line 145
    sget-object v0, Ljp/co/canonits/android/emojinit/EmojiInit;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 146
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    sget-object v0, Ljp/co/canonits/android/emojinit/EmojiInit;->mDialog:Landroid/app/ProgressDialog;

    const-string v1, "au\u7d75\u6587\u5b57\u521d\u671f\u5316\u51e6\u7406\u4e2d\u3067\u3059"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 151
    :goto_0
    sget-object v0, Ljp/co/canonits/android/emojinit/EmojiInit;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 153
    sget-object v0, Ljp/co/canonits/android/emojinit/EmojiInit;->mDialog:Landroid/app/ProgressDialog;

    new-instance v1, Ljp/co/canonits/android/emojinit/EmojiInit$1;

    invoke-direct {v1, p0}, Ljp/co/canonits/android/emojinit/EmojiInit$1;-><init>(Ljp/co/canonits/android/emojinit/EmojiInit;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 160
    sget-object v0, Ljp/co/canonits/android/emojinit/EmojiInit;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 161
    return-void

    .line 149
    :cond_0
    sget-object v0, Ljp/co/canonits/android/emojinit/EmojiInit;->mDialog:Landroid/app/ProgressDialog;

    const-string v1, "Emoji initializing"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public dismissMakeEmojiDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    sget-object v0, Ljp/co/canonits/android/emojinit/EmojiInit;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Ljp/co/canonits/android/emojinit/EmojiInit;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 56
    :cond_0
    sput-object v1, Ljp/co/canonits/android/emojinit/EmojiInit;->mDialog:Landroid/app/ProgressDialog;

    .line 57
    sput-object v1, Ljp/co/canonits/android/emojinit/EmojiInit;->mListener:Ljp/co/canonits/android/emojinit/EmojiInit$OnCompletionListener;

    .line 58
    return-void
.end method

.method public makeEmoji(Landroid/content/Context;Ljp/co/canonits/android/emojinit/EmojiInit$OnCompletionListener;)V
    .locals 4
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v3, 0x0

    .line 38
    sget-object v0, Ljp/co/canonits/android/emojinit/EmojiInit;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iput-object p1, p0, Ljp/co/canonits/android/emojinit/EmojiInit;->mContext:Landroid/content/Context;

    .line 44
    iget-object v0, p0, Ljp/co/canonits/android/emojinit/EmojiInit;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Ljp/co/canonits/android/emojinit/EmojiInit;->createMakeEmojiDialog(Landroid/content/Context;)V

    .line 45
    sput-object p2, Ljp/co/canonits/android/emojinit/EmojiInit;->mListener:Ljp/co/canonits/android/emojinit/EmojiInit$OnCompletionListener;

    .line 46
    sget-object v0, Ljp/co/canonits/android/emojinit/EmojiInit;->mCopyTask:Ljp/co/canonits/android/emojinit/EmojiInit$CopyTask;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljp/co/canonits/android/emojinit/EmojiInit$CopyTask;

    invoke-direct {v0, p0, v3}, Ljp/co/canonits/android/emojinit/EmojiInit$CopyTask;-><init>(Ljp/co/canonits/android/emojinit/EmojiInit;Ljp/co/canonits/android/emojinit/EmojiInit$CopyTask;)V

    sput-object v0, Ljp/co/canonits/android/emojinit/EmojiInit;->mCopyTask:Ljp/co/canonits/android/emojinit/EmojiInit$CopyTask;

    .line 48
    sget-object v0, Ljp/co/canonits/android/emojinit/EmojiInit;->mCopyTask:Ljp/co/canonits/android/emojinit/EmojiInit$CopyTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljp/co/canonits/android/emojinit/EmojiInit$CopyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
