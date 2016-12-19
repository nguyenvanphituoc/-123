<div class="row">
	<div class="col-md-8 col-md-offset-2 form_content row">
		<div class="col-md-12">
			<h3 class="contact_form_header">welcomes your comments, ideas,
				support, and other feedback</h3>
		</div>
		<div class="clearfix"></div>
		<div class="col-md-12 contact_form_noti">
			<p>If you have any questions: Please fill out the form and a
				customer service representative will reply to your inquiry within 24
				hours.</p>
		</div>
		<form class="form form-horizontal contact_form" id="contactForm"
			action="uploadfile" method="POST"
			enctype="multipart/form-data">
			<div class="form-group">
				<label class="col-md-3 control-label">Select journal
					subject:*</label>
				<div class="col-md-7">
					<select class="form-control" required name="title">
						<option selected="selected" value="">--Please select--</option>
						<option value="United States">United States</option>
						<option value="United Kingdom">United Kingdom</option>
						<option value="Afghanistan">Afghanistan</option>
						<option value="Albania">Albania</option>
						<option value="Algeria">Algeria</option>
						<option value="American Samoa">American Samoa</option>
					</select>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label">Full Name Author:*</label>
				<div class="col-md-7">
					<input type="text" class="form-control" id="name" required
						data-validation-required-message="Please enter your name."
						name="fullname">
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label">Email Address:*</label>
				<div class=" col-md-7">
					<input type="email" class="form-control" id="email" required
						data-validation-required-message="Please enter your email address."
						name="email">
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label">Keyword*:</label>
				<div class=" col-md-7">
					<ul style="list-style: none;">
						<li><input type="text" class="form-control" required
							data-validation-required-message="Please enter keywd."
							name="keywd1"></li>
						<li><input type="text" class="form-control"
							data-validation-required-message="Please enter keywd."
							name="keywd2"></li>
						<li><input type="text" class="form-control"
							data-validation-required-message="Please enter keywd."
							name="keywd3"></li>
						<li><input type="text" class="form-control"
							data-validation-required-message="Please enter keywd."
							name="keywd4"></li>
						<li><input type="text" class="form-control"
							data-validation-required-message="Please enter keywd."
							name="keywd5"></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label">Description:*</label>
				<div class=" col-md-7">
					<textarea rows="10" cols="100" class="form-control" id="question"
						required
						data-validation-required-message="Please enter your question"
						maxlength="1024" style="resize: none"></textarea>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label">Attach*:</label>
				<div class=" col-md-7">
					<input type="file" name="file" class="file_browse"
						title="link file" required>
				</div>
				<div class="clearfix"></div>
			</div>
			<!-- 	<div class="form-group">
						<label class="col-md-3 control-label">Anti spam code:*</label>
						<div class=" col-md-7">
							<input type="text" name="spamcode"
								class="spamcode_input form-control" title="spam code" required
								name="validcode">
							<div class="row" style="margin: auto 0px;">
								<input type="image" name="spamcode" class="spamcode_img"
									title="image" disabled="disabled">
								<button type="reset" name="spamcode" class="spamcode_btnReset">
									<span class="glyphicon glyphicon-refresh"></span>
								</button>
							</div>
						</div>
						<div class="clearfix"></div>
					</div> -->
			<!-- For success/fail messages -->
			<div class="form-group">
				<button type="submit" class="btn btn-primary pull-right contact_btn">Send
					Question</button>
			</div>
		</form>

	</div>
</div>
<!-- /.row -->

