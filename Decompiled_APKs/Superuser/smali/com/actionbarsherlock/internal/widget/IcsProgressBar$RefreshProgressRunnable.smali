.class Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mFromUser:Z

.field private mId:I

.field private mProgress:I

.field final synthetic this$0:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/internal/widget/IcsProgressBar;IIZ)V
    .locals 0

    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;->this$0:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;->mId:I

    iput p3, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;->mProgress:I

    iput-boolean p4, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;->mFromUser:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;->this$0:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    iget v1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;->mId:I

    iget v2, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;->mProgress:I

    iget-boolean v3, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;->mFromUser:Z

    const/4 v4, 0x1

    #calls: Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->doRefreshProgress(IIZZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->access$0(Lcom/actionbarsherlock/internal/widget/IcsProgressBar;IIZZ)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;->this$0:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    #setter for: Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->mRefreshProgressRunnable:Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;
    invoke-static {v0, p0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->access$1(Lcom/actionbarsherlock/internal/widget/IcsProgressBar;Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;)V

    return-void
.end method

.method public setup(IIZ)V
    .locals 0

    iput p1, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;->mId:I

    iput p2, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;->mProgress:I

    iput-boolean p3, p0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar$RefreshProgressRunnable;->mFromUser:Z

    return-void
.end method
