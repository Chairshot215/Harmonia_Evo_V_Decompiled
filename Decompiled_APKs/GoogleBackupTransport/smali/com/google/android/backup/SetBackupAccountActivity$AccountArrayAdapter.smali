.class Lcom/google/android/backup/SetBackupAccountActivity$AccountArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SetBackupAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/backup/SetBackupAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mAddIcon:Landroid/graphics/drawable/Drawable;

.field private mCount:I

.field private mGoogleAuthenticatorIcon:Landroid/graphics/drawable/Drawable;

.field private mItems:[Ljava/lang/String;

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter "objects"
    .parameter "googleAuthenticatorIcon"
    .parameter "addIcon"

    .prologue
    .line 223
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 224
    iput-object p3, p0, Lcom/google/android/backup/SetBackupAccountActivity$AccountArrayAdapter;->mItems:[Ljava/lang/String;

    .line 225
    if-eqz p3, :cond_0

    array-length v0, p3

    :goto_0
    iput v0, p0, Lcom/google/android/backup/SetBackupAccountActivity$AccountArrayAdapter;->mCount:I

    .line 226
    iput-object p4, p0, Lcom/google/android/backup/SetBackupAccountActivity$AccountArrayAdapter;->mGoogleAuthenticatorIcon:Landroid/graphics/drawable/Drawable;

    .line 227
    iput-object p5, p0, Lcom/google/android/backup/SetBackupAccountActivity$AccountArrayAdapter;->mAddIcon:Landroid/graphics/drawable/Drawable;

    .line 228
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/android/backup/SetBackupAccountActivity$AccountArrayAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 230
    return-void

    .line 225
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 236
    if-nez p2, :cond_0

    .line 237
    iget-object v1, p0, Lcom/google/android/backup/SetBackupAccountActivity$AccountArrayAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/high16 v2, 0x7f02

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 238
    new-instance v0, Lcom/google/android/backup/SetBackupAccountActivity$ViewHolder;

    invoke-direct {v0, v3}, Lcom/google/android/backup/SetBackupAccountActivity$ViewHolder;-><init>(Lcom/google/android/backup/SetBackupAccountActivity$1;)V

    .line 239
    .local v0, holder:Lcom/google/android/backup/SetBackupAccountActivity$ViewHolder;
    const v1, 0x7f040001

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/google/android/backup/SetBackupAccountActivity$ViewHolder;->text:Landroid/widget/TextView;

    .line 240
    const/high16 v1, 0x7f04

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/google/android/backup/SetBackupAccountActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 241
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 246
    :goto_0
    iget-object v1, v0, Lcom/google/android/backup/SetBackupAccountActivity$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/backup/SetBackupAccountActivity$AccountArrayAdapter;->mItems:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget v1, p0, Lcom/google/android/backup/SetBackupAccountActivity$AccountArrayAdapter;->mCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1

    .line 248
    iget-object v1, v0, Lcom/google/android/backup/SetBackupAccountActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/backup/SetBackupAccountActivity$AccountArrayAdapter;->mAddIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    :goto_1
    return-object p2

    .line 243
    .end local v0           #holder:Lcom/google/android/backup/SetBackupAccountActivity$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/backup/SetBackupAccountActivity$ViewHolder;

    .restart local v0       #holder:Lcom/google/android/backup/SetBackupAccountActivity$ViewHolder;
    goto :goto_0

    .line 250
    :cond_1
    iget-object v1, v0, Lcom/google/android/backup/SetBackupAccountActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/backup/SetBackupAccountActivity$AccountArrayAdapter;->mGoogleAuthenticatorIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
