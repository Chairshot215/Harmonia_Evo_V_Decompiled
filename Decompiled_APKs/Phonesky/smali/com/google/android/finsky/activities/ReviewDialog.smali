.class public Lcom/google/android/finsky/activities/ReviewDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "ReviewDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/ReviewDialog$Listener;
    }
.end annotation


# static fields
.field private static final DESCRIPTION_MAP:[I


# instance fields
.field private mCommentView:Landroid/widget/TextView;

.field mEmptyTextWatcher:Landroid/text/TextWatcher;

.field private mPreviousReviewId:Ljava/lang/String;

.field private mRatingBar:Landroid/widget/RatingBar;

.field private mRequiresPlusCheck:Z

.field private mReviewIsPublic:Z

.field private mReviewMode:I

.field private mTitleView:Landroid/widget/TextView;

.field private mUserProfile:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/finsky/activities/ReviewDialog;->DESCRIPTION_MAP:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x82t 0x1t 0x7t 0x7ft
        0x83t 0x1t 0x7t 0x7ft
        0x84t 0x1t 0x7t 0x7ft
        0x85t 0x1t 0x7t 0x7ft
        0x86t 0x1t 0x7t 0x7ft
        0x87t 0x1t 0x7t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mRequiresPlusCheck:Z

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mReviewIsPublic:Z

    .line 93
    new-instance v0, Lcom/google/android/finsky/activities/ReviewDialog$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/ReviewDialog$1;-><init>(Lcom/google/android/finsky/activities/ReviewDialog;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mEmptyTextWatcher:Landroid/text/TextWatcher;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/ReviewDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->syncOkButtonState()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/ReviewDialog;)Lcom/google/android/finsky/activities/ReviewDialog$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getListener()Lcom/google/android/finsky/activities/ReviewDialog$Listener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/ReviewDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->isDeletingReview()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/ReviewDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mPreviousReviewId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/ReviewDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getUserRating()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/activities/ReviewDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getUserTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/activities/ReviewDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getUserComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/activities/ReviewDialog;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mUserProfile:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/activities/ReviewDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mReviewIsPublic:Z

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/finsky/activities/ReviewDialog;F)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/ReviewDialog;->getRatingDescription(F)I

    move-result v0

    return v0
.end method

.method private getListener()Lcom/google/android/finsky/activities/ReviewDialog$Listener;
    .locals 3

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 503
    .local v1, f:Landroid/support/v4/app/Fragment;
    instance-of v2, v1, Lcom/google/android/finsky/activities/ReviewDialog$Listener;

    if-eqz v2, :cond_0

    .line 504
    check-cast v1, Lcom/google/android/finsky/activities/ReviewDialog$Listener;

    .line 510
    .end local v1           #f:Landroid/support/v4/app/Fragment;
    :goto_0
    return-object v1

    .line 506
    .restart local v1       #f:Landroid/support/v4/app/Fragment;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 507
    .local v0, a:Landroid/app/Activity;
    instance-of v2, v0, Lcom/google/android/finsky/activities/ReviewDialog$Listener;

    if-eqz v2, :cond_1

    .line 508
    check-cast v0, Lcom/google/android/finsky/activities/ReviewDialog$Listener;

    .end local v0           #a:Landroid/app/Activity;
    move-object v1, v0

    goto :goto_0

    .line 510
    .restart local v0       #a:Landroid/app/Activity;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getRatingDescription(F)I
    .locals 2
    .parameter "rating"

    .prologue
    .line 278
    sget-object v0, Lcom/google/android/finsky/activities/ReviewDialog;->DESCRIPTION_MAP:[I

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method private getUserComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mCommentView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUserRating()I
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getRating()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private getUserTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isDeletingReview()Z
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mPreviousReviewId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getUserRating()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getUserTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getUserComment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance(ILjava/lang/String;Lcom/google/android/finsky/remoting/protos/Rev$Review;I)Lcom/google/android/finsky/activities/ReviewDialog;
    .locals 4
    .parameter "reviewMode"
    .parameter "docId"
    .parameter "previousReview"
    .parameter "backend"

    .prologue
    .line 125
    new-instance v1, Lcom/google/android/finsky/activities/ReviewDialog;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/ReviewDialog;-><init>()V

    .line 126
    .local v1, dialogFragment:Lcom/google/android/finsky/activities/ReviewDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 127
    .local v0, arguments:Landroid/os/Bundle;
    const-string v2, "review_mode"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 128
    const-string v2, "doc_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v2, "backend"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    const-string v3, "previous_review_id"

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getCommentId()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    if-eqz p2, :cond_0

    .line 133
    const-string v2, "previous_rating"

    invoke-virtual {p2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getStarRating()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    const-string v2, "previous_title"

    invoke-virtual {p2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v2, "previous_comment"

    invoke-virtual {p2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getComment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v2, "previous_review_profile"

    invoke-virtual {p2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getPlusProfile()Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/micro/MessageMicro;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 139
    :cond_0
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/ReviewDialog;->setArguments(Landroid/os/Bundle;)V

    .line 140
    return-object v1

    .line 130
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private syncOkButtonState()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 290
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    .line 291
    .local v1, dialog:Landroid/app/AlertDialog;
    if-nez v1, :cond_0

    .line 315
    :goto_0
    return-void

    .line 294
    :cond_0
    const/4 v7, -0x1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    .line 297
    .local v3, positiveButton:Landroid/widget/Button;
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->isDeletingReview()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 298
    iget-boolean v7, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mRequiresPlusCheck:Z

    if-nez v7, :cond_1

    move v2, v5

    .line 299
    .local v2, enabled:Z
    :goto_1
    const v5, 0x7f07016b

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(I)V

    .line 314
    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .end local v2           #enabled:Z
    :cond_1
    move v2, v6

    .line 298
    goto :goto_1

    .line 301
    :cond_2
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getUserRating()I

    move-result v7

    if-lez v7, :cond_4

    iget-boolean v7, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mRequiresPlusCheck:Z

    if-nez v7, :cond_4

    move v2, v5

    .line 302
    .restart local v2       #enabled:Z
    :goto_3
    if-eqz v2, :cond_3

    .line 303
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getUserTitle()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 304
    .local v4, titleEmpty:Z
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getUserComment()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 305
    .local v0, commentEmpty:Z
    iget v7, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mReviewMode:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_6

    .line 306
    if-nez v4, :cond_5

    if-nez v0, :cond_5

    move v2, v5

    .line 312
    .end local v0           #commentEmpty:Z
    .end local v4           #titleEmpty:Z
    :cond_3
    :goto_4
    const v5, 0x7f07019f

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(I)V

    goto :goto_2

    .end local v2           #enabled:Z
    :cond_4
    move v2, v6

    .line 301
    goto :goto_3

    .restart local v0       #commentEmpty:Z
    .restart local v2       #enabled:Z
    .restart local v4       #titleEmpty:Z
    :cond_5
    move v2, v6

    .line 306
    goto :goto_4

    .line 309
    :cond_6
    if-eqz v4, :cond_7

    if-eqz v0, :cond_8

    :cond_7
    move v2, v5

    :goto_5
    goto :goto_4

    :cond_8
    move v2, v6

    goto :goto_5
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 17
    .parameter "savedInstanceState"

    .prologue
    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 147
    .local v2, arguments:Landroid/os/Bundle;
    const/4 v8, 0x0

    .line 148
    .local v8, previousRating:I
    const/4 v10, 0x0

    .line 149
    .local v10, previousTitle:Ljava/lang/String;
    const/4 v7, 0x0

    .line 150
    .local v7, previousComment:Ljava/lang/String;
    const-string v14, "review_mode"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mReviewMode:I

    .line 151
    const-string v14, "doc_id"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 152
    .local v6, docId:Ljava/lang/String;
    const-string v14, "backend"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 153
    .local v3, backend:I
    const-string v14, "previous_review_id"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mPreviousReviewId:Ljava/lang/String;

    .line 154
    const-string v14, "previous_review_profile"

    invoke-static {v2, v14}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v9

    check-cast v9, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;

    .line 159
    .local v9, previousReviewProfile:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;
    if-eqz p1, :cond_0

    move-object/from16 v13, p1

    .line 160
    .local v13, source:Landroid/os/Bundle;
    :goto_0
    const-string v14, "previous_rating"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 161
    const-string v14, "previous_title"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 162
    const-string v14, "previous_comment"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 166
    new-instance v4, Landroid/view/ContextThemeWrapper;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    const v15, 0x7f0e003f

    invoke-direct {v4, v14, v15}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 167
    .local v4, context:Landroid/content/Context;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 169
    .local v1, alert:Landroid/app/AlertDialog$Builder;
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    const v15, 0x7f0400f8

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 171
    .local v12, ratingSetterFrame:Landroid/view/View;
    const v14, 0x7f0801eb

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RatingBar;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mRatingBar:Landroid/widget/RatingBar;

    .line 172
    const v14, 0x7f0801ec

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 174
    .local v11, ratingDescription:Landroid/widget/TextView;
    const v14, 0x7f0801ed

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mTitleView:Landroid/widget/TextView;

    .line 175
    const v14, 0x7f0801ee

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mCommentView:Landroid/widget/TextView;

    .line 176
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mRatingBar:Landroid/widget/RatingBar;

    int-to-float v15, v8

    invoke-virtual {v14, v15}, Landroid/widget/RatingBar;->setRating(F)V

    .line 177
    int-to-float v14, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/android/finsky/activities/ReviewDialog;->getRatingDescription(F)I

    move-result v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(I)V

    .line 179
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mReviewMode:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 180
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mTitleView:Landroid/widget/TextView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mCommentView:Landroid/widget/TextView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    :goto_1
    const v14, 0x7f07017f

    invoke-virtual {v1, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 187
    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 188
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/android/finsky/activities/ReviewDialog;->setCancelable(Z)V

    .line 190
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mEmptyTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mCommentView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mEmptyTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 192
    const v14, 0x104000a

    invoke-virtual {v4, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lcom/google/android/finsky/activities/ReviewDialog$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v6}, Lcom/google/android/finsky/activities/ReviewDialog$2;-><init>(Lcom/google/android/finsky/activities/ReviewDialog;Ljava/lang/String;)V

    invoke-virtual {v1, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 207
    const/high16 v14, 0x104

    invoke-virtual {v4, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lcom/google/android/finsky/activities/ReviewDialog$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/google/android/finsky/activities/ReviewDialog$3;-><init>(Lcom/google/android/finsky/activities/ReviewDialog;)V

    invoke-virtual {v1, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 213
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mRatingBar:Landroid/widget/RatingBar;

    new-instance v15, Lcom/google/android/finsky/activities/ReviewDialog$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v11}, Lcom/google/android/finsky/activities/ReviewDialog$4;-><init>(Lcom/google/android/finsky/activities/ReviewDialog;Landroid/widget/TextView;)V

    invoke-virtual {v14, v15}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 221
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 253
    .local v5, dialog:Landroid/app/AlertDialog;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mRequiresPlusCheck:Z

    .line 256
    return-object v5

    .end local v1           #alert:Landroid/app/AlertDialog$Builder;
    .end local v4           #context:Landroid/content/Context;
    .end local v5           #dialog:Landroid/app/AlertDialog;
    .end local v11           #ratingDescription:Landroid/widget/TextView;
    .end local v12           #ratingSetterFrame:Landroid/view/View;
    .end local v13           #source:Landroid/os/Bundle;
    :cond_0
    move-object v13, v2

    .line 159
    goto/16 :goto_0

    .line 183
    .restart local v1       #alert:Landroid/app/AlertDialog$Builder;
    .restart local v4       #context:Landroid/content/Context;
    .restart local v11       #ratingDescription:Landroid/widget/TextView;
    .restart local v12       #ratingSetterFrame:Landroid/view/View;
    .restart local v13       #source:Landroid/os/Bundle;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mCommentView:Landroid/widget/TextView;

    invoke-virtual {v14, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mEmptyTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 262
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mCommentView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mEmptyTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 264
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    .line 265
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 493
    const-string v0, "previous_rating"

    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getUserRating()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 494
    const-string v0, "previous_title"

    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getUserTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v0, "previous_comment"

    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getUserComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 269
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 270
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->syncOkButtonState()V

    .line 271
    return-void
.end method
