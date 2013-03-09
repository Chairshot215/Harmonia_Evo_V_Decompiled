.class Lcom/google/android/apps/uploader/ManagerActivity$ManagerListAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "ManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/uploader/ManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManagerListAdapter"
.end annotation


# instance fields
.field private infoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/apps/uploader/UploadInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/apps/uploader/ManagerActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/uploader/ManagerActivity;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/google/android/apps/uploader/ManagerActivity$ManagerListAdapter;->this$0:Lcom/google/android/apps/uploader/ManagerActivity;

    .line 154
    const v0, 0x7f030003

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity$ManagerListAdapter;->infoMap:Ljava/util/HashMap;

    .line 156
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    invoke-static {p3}, Lcom/google/android/apps/uploader/UploadsQueue;->loadFromCursor(Landroid/database/Cursor;)Lcom/google/android/apps/uploader/UploadInfo;

    move-result-object v5

    .line 162
    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity$ManagerListAdapter;->infoMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Lcom/google/android/apps/uploader/UploadInfo;->getGuid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const v0, 0x7f080009

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 166
    const v0, 0x7f080010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 167
    const v0, 0x7f080011

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 168
    const v1, 0x7f080012

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 170
    const v2, 0x7f080013

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 171
    const v3, 0x7f080014

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 172
    const v4, 0x7f080015

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    .line 174
    const v6, 0x7f080016

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 176
    iget-object v6, p0, Lcom/google/android/apps/uploader/ManagerActivity$ManagerListAdapter;->this$0:Lcom/google/android/apps/uploader/ManagerActivity;

    #getter for: Lcom/google/android/apps/uploader/ManagerActivity;->application:Lcom/google/android/apps/uploader/UploaderApplication;
    invoke-static {v6}, Lcom/google/android/apps/uploader/ManagerActivity;->access$000(Lcom/google/android/apps/uploader/ManagerActivity;)Lcom/google/android/apps/uploader/UploaderApplication;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/apps/uploader/UploadInfo;->getGuid()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/google/android/apps/uploader/UploaderApplication;->getThumbnail(J)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 177
    if-nez v6, :cond_0

    .line 179
    invoke-virtual {v5}, Lcom/google/android/apps/uploader/UploadInfo;->getThumbnail()[B

    move-result-object v6

    .line 180
    const/4 v7, 0x0

    array-length v8, v6

    invoke-static {v6, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 182
    iget-object v7, p0, Lcom/google/android/apps/uploader/ManagerActivity$ManagerListAdapter;->this$0:Lcom/google/android/apps/uploader/ManagerActivity;

    #getter for: Lcom/google/android/apps/uploader/ManagerActivity;->application:Lcom/google/android/apps/uploader/UploaderApplication;
    invoke-static {v7}, Lcom/google/android/apps/uploader/ManagerActivity;->access$000(Lcom/google/android/apps/uploader/ManagerActivity;)Lcom/google/android/apps/uploader/UploaderApplication;

    move-result-object v7

    invoke-virtual {v5}, Lcom/google/android/apps/uploader/UploadInfo;->getGuid()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9, v6}, Lcom/google/android/apps/uploader/UploaderApplication;->putThumbnail(JLandroid/graphics/Bitmap;)V

    .line 184
    :cond_0
    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 186
    invoke-virtual {v5}, Lcom/google/android/apps/uploader/UploadInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    invoke-virtual {v5}, Lcom/google/android/apps/uploader/UploadInfo;->getDestination()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity$ManagerListAdapter;->this$0:Lcom/google/android/apps/uploader/ManagerActivity;

    invoke-virtual {v5}, Lcom/google/android/apps/uploader/UploadInfo;->getBytesTotal()J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 193
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    invoke-virtual {v5}, Lcom/google/android/apps/uploader/UploadInfo;->getState()Lcom/google/android/apps/uploader/UploadInfo$UploadState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploadInfo$UploadState;->toStringId()I

    move-result v0

    .line 196
    iget-object v1, p0, Lcom/google/android/apps/uploader/ManagerActivity$ManagerListAdapter;->this$0:Lcom/google/android/apps/uploader/ManagerActivity;

    #getter for: Lcom/google/android/apps/uploader/ManagerActivity;->service:Lcom/google/android/apps/uploader/UploadService;
    invoke-static {v1}, Lcom/google/android/apps/uploader/ManagerActivity;->access$100(Lcom/google/android/apps/uploader/ManagerActivity;)Lcom/google/android/apps/uploader/UploadService;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/apps/uploader/ManagerActivity$ManagerListAdapter;->this$0:Lcom/google/android/apps/uploader/ManagerActivity;

    #getter for: Lcom/google/android/apps/uploader/ManagerActivity;->service:Lcom/google/android/apps/uploader/UploadService;
    invoke-static {v1}, Lcom/google/android/apps/uploader/ManagerActivity;->access$100(Lcom/google/android/apps/uploader/ManagerActivity;)Lcom/google/android/apps/uploader/UploadService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/UploadService;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v5}, Lcom/google/android/apps/uploader/UploadInfo;->isPending()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 197
    const v0, 0x7f060025

    .line 198
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    :cond_1
    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 212
    invoke-virtual {v5}, Lcom/google/android/apps/uploader/UploadInfo;->getStateDetail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    return-void

    .line 199
    :cond_2
    invoke-virtual {v5}, Lcom/google/android/apps/uploader/UploadInfo;->getState()Lcom/google/android/apps/uploader/UploadInfo$UploadState;

    move-result-object v1

    sget-object v6, Lcom/google/android/apps/uploader/UploadInfo$UploadState;->UPLOADING:Lcom/google/android/apps/uploader/UploadInfo$UploadState;

    if-ne v1, v6, :cond_1

    .line 200
    invoke-virtual {v5}, Lcom/google/android/apps/uploader/UploadInfo;->getPercentageUploaded()I

    move-result v1

    .line 201
    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 202
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "%"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 205
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    iget-object v1, p0, Lcom/google/android/apps/uploader/ManagerActivity$ManagerListAdapter;->this$0:Lcom/google/android/apps/uploader/ManagerActivity;

    #setter for: Lcom/google/android/apps/uploader/ManagerActivity;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v1, v4}, Lcom/google/android/apps/uploader/ManagerActivity;->access$202(Lcom/google/android/apps/uploader/ManagerActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 209
    iget-object v1, p0, Lcom/google/android/apps/uploader/ManagerActivity$ManagerListAdapter;->this$0:Lcom/google/android/apps/uploader/ManagerActivity;

    #setter for: Lcom/google/android/apps/uploader/ManagerActivity;->percentTextView:Landroid/widget/TextView;
    invoke-static {v1, p1}, Lcom/google/android/apps/uploader/ManagerActivity;->access$302(Lcom/google/android/apps/uploader/ManagerActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    goto :goto_0
.end method

.method public getUploadInfo(J)Lcom/google/android/apps/uploader/UploadInfo;
    .locals 2
    .parameter

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity$ManagerListAdapter;->infoMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/uploader/UploadInfo;

    return-object p0
.end method
