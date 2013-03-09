.class public Lcom/android/providers/calendar/CalendarDebugActivity;
.super Landroid/app/Activity;
.source "CalendarDebugActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/calendar/CalendarDebugActivity$1;,
        Lcom/android/providers/calendar/CalendarDebugActivity$DumpDbTask;
    }
.end annotation


# static fields
.field private static final MIME_TYPE:Ljava/lang/String; = "application/zip"

.field private static final OUT_FILE:Ljava/lang/String; = "calendar.db.zip"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mConfirmButton:Landroid/widget/Button;

.field private mDeleteButton:Landroid/widget/Button;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "CalendarDebugActivity"

    sput-object v0, Lcom/android/providers/calendar/CalendarDebugActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 102
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/providers/calendar/CalendarDebugActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/providers/calendar/CalendarDebugActivity;Ljava/io/File;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDebugActivity;->emailFile(Ljava/io/File;)V

    return-void
.end method

.method private cleanup()V
    .locals 3

    .prologue
    .line 97
    sget-object v1, Lcom/android/providers/calendar/CalendarDebugActivity;->TAG:Ljava/lang/String;

    const-string v2, "Deleting calendar.db.zip"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "calendar.db.zip"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 99
    .local v0, outFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 100
    return-void
.end method

.method private emailFile(Ljava/io/File;)V
    .locals 4
    .parameter "file"

    .prologue
    .line 190
    sget-object v1, Lcom/android/providers/calendar/CalendarDebugActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Drafting email to send "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.SUBJECT"

    const v2, 0x7f050012

    invoke-virtual {p0, v2}, Lcom/android/providers/calendar/CalendarDebugActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string v1, "android.intent.extra.TEXT"

    const v2, 0x7f050013

    invoke-virtual {p0, v2}, Lcom/android/providers/calendar/CalendarDebugActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    const-string v1, "application/zip"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string v1, "android.intent.extra.STREAM"

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 196
    const v1, 0x7f050011

    invoke-virtual {p0, v1}, Lcom/android/providers/calendar/CalendarDebugActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/providers/calendar/CalendarDebugActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 198
    return-void
.end method

.method private updateDeleteButton()V
    .locals 4

    .prologue
    .line 73
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "calendar.db.zip"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 75
    .local v0, fileExist:Z
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarDebugActivity;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 76
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, 0x1

    .line 184
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarDebugActivity;->updateDeleteButton()V

    .line 185
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDebugActivity;->mConfirmButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 186
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDebugActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 187
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 94
    :goto_0
    return-void

    .line 82
    :pswitch_0
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDebugActivity;->mConfirmButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 83
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDebugActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 84
    new-instance v0, Lcom/android/providers/calendar/CalendarDebugActivity$DumpDbTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/providers/calendar/CalendarDebugActivity$DumpDbTask;-><init>(Lcom/android/providers/calendar/CalendarDebugActivity;Lcom/android/providers/calendar/CalendarDebugActivity$1;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarDebugActivity$DumpDbTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 87
    :pswitch_1
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarDebugActivity;->cleanup()V

    .line 88
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarDebugActivity;->updateDeleteButton()V

    goto :goto_0

    .line 91
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarDebugActivity;->finish()V

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x7f060001
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x3

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0, v2}, Lcom/android/providers/calendar/CalendarDebugActivity;->requestWindowFeature(I)Z

    .line 61
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/android/providers/calendar/CalendarDebugActivity;->setContentView(I)V

    .line 63
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarDebugActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 66
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Lcom/android/providers/calendar/CalendarDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDebugActivity;->mConfirmButton:Landroid/widget/Button;

    .line 67
    const v0, 0x7f060003

    invoke-virtual {p0, v0}, Lcom/android/providers/calendar/CalendarDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDebugActivity;->mCancelButton:Landroid/widget/Button;

    .line 68
    const v0, 0x7f060002

    invoke-virtual {p0, v0}, Lcom/android/providers/calendar/CalendarDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDebugActivity;->mDeleteButton:Landroid/widget/Button;

    .line 69
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarDebugActivity;->updateDeleteButton()V

    .line 70
    return-void
.end method
